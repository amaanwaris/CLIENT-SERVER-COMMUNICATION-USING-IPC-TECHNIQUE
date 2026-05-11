#include "includes.h"
#include "dataStructures.h"
#include "declarations.h"

int main(int argc, char* argv[])
{   

#ifdef DEBUG
	printf("%s: %s : Begin.\n",__func__,__FILE__);    
#endif


    	if (argc != 4)
        	return 1;

    	int pipe_fd, shmId, sem_id;
    	key_t shmKey;
    	key_t sem_key;
    	Request req;
    	Result res;
    	Result *shmPtr;

    	pipe_fd = atoi(argv[1]);
    	shmKey = (key_t) atoi(argv[2]);
    	sem_key = (key_t) atoi(argv[3]);

    	//1. Read Request from Server via Pipe
    	if (read(pipe_fd, &req, sizeof(Request)) == -1)
    	{
        	perror("[vendorAdd] read from pipe failed");
        	exit(EXIT_FAILURE);
    	}

    	// Process
  	if (req.oper != '+')
    	{
        	printf("%s:%d: Invalid Request.\n", __FILE__, __LINE__);
        	return -1;
    	}

    	res.clientPid = req.clientPid;
    	res.status = 0;
    	res.result = req.op1 + req.op2;

    	// 3.Attach to SHM and SysV Semaphores (as this is a separate exec'd program)
    	shmId = shmget(shmKey, sizeof(Result), 0666);
    	sem_id = semget(sem_key, 2, 0666);
    	shmPtr = (Result*) shmat(shmId, NULL, 0);

    	struct sembuf wait_empty = {0, -1, 0}; // Wait on Sem 0 (Empty)
    	struct sembuf post_full  = {1,  1, 0}; // Post Sem 1 (Full)
   
        // Synchronized write
        semop(sem_id, &wait_empty, 1); 
        *shmPtr = res;
        semop(sem_id, &post_full, 1); 

        shmdt(shmPtr);

#ifdef DEBUG
                printf("%s: %s : End.\n",__func__,__FILE__);    
#endif

		return 0;
}
