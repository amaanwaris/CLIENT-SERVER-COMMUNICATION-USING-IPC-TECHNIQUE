#include "includes.h"
#include "dataStructures.h"
#include "declarations.h"

// Thread handling a specific client request
void* clientHandler(void* arg)
{
	Infra* infra = (Infra*) arg;
    	int fifo_fd;
    	Request req;
    	ssize_t bytes_read;
    	pid_t pid;
    	char fd_str[16], shm_str[32], sem_str[32];

    	// 1. Open FIFO (Blocks until client opens it for writing)
    	fifo_fd = open(FIFO_PATH, O_RDONLY);
    	if (fifo_fd == -1)
    	{
        	perror("open");
        	pthread_exit(NULL);
    	}
	
	bytes_read = read(fifo_fd, &req, sizeof(Request));
    	close(fifo_fd);

    	//2. Instantly unblock Server Main so it can spawn the next clientHandler
    	if (sem_post(&infra->threadSyncSem) == -1)
    	{
        	perror("sem_post");
        	pthread_exit(NULL);
    	}
    	
    	if (bytes_read != sizeof(Request))
    	{
        	perror("read");
        	pthread_exit(NULL);
    	}
////////////////////////////////////////////////////////////////////////
    	//3. Mutex usage to safely count total active/processed requests
    	pthread_mutex_lock(&infra->statsMutex);
    	infra->totalRequests++;
    	printf("[Server] Processing Request #%d (Client %d)\n",infra->totalRequests, req.clientPid);
    	pthread_mutex_unlock(&infra->statsMutex);

    	// Validate oper
    	char* vendor_prog = NULL;
	switch(req.oper)
	{
		case '+':
			vendor_prog = "./vendorAdd";
			break;
		case '-':
			vendor_prog = "./vendorSub";
			break;
		case '*':
			vendor_prog = "./vendorMul";
			break;
		case '/':
			vendor_prog = "./vendorDiv";
			break;
		case '%':
			vendor_prog = "./vendorMod";
			break;
		default:
			printf("[Server]Invalid request oper: %c\n",req.oper);
			MsgBuf err_msg;
			err_msg.mtype= req.clientPid;
			err_msg.data.clientPid = req.clientPid;
			err_msg.data.status = -1;
			msgsnd(infra->mqId, &err_msg, sizeof(MsgBuf) - sizeof(long), 0);
			pthread_exit(NULL);
	}
///////////////////////////////////////////////////////////////
	pthread_mutex_lock(&infra->pipeMutex);

	pid = fork();
	if(pid == 0)
	{
		//Child Process (Become the vendor)........
		close(infra->vendorPipe[1]);

		sprintf(fd_str, "%d", infra->vendorPipe[0]); //Pass pipe read end

		sprintf(shm_str, "%d", infra->shmKey); //Pass pipe read end
		sprintf(sem_str, "%d", infra->sysvSemKey); //Pass pipe read end
		execl(vendor_prog, vendor_prog, fd_str, shm_str, sem_str, NULL);
		perror("[Sever]execl failed, Is Vendor Complied?..");
		exit(1);
	}
	else if (pid > 0)
	{
		//Parent Thread (ClientHandler )...
		// Send request to vendor over the shared pipe..

		if(write(infra->vendorPipe[1] ,&req, sizeof(Request)) == -1)
		{
			perror("sem_POST");
			//exit(EXIT_FAILURE);
		}

		//wait for vendor child to finish execution before releasing pipe
		waitpid(pid, NULL, 0);
	}

	pthread_mutex_unlock(&infra->pipeMutex);
	pthread_exit(NULL);
}
