#include "includes.h"
#include "dataStructures.h"
#include "declarations.h"

int main(int argc, char* argv[])
{
#ifdef DEBUG
        printf("%s: %s Begin.\n",__func__,__FILE__);
#endif

    	Request req;
    	int fifo_fd, mqId;
    	key_t mqKey;
    	MsgBuf msg;

    	if (argc != 4)
    	{
        	printf("Usage: %s <oper> <num1> <num2>\n", argv[0]);
        	printf("Example: %s + 10 5\n", argv[0]);
        	return 1;
    	}

    	// 1. Prepare Request
    	req.oper = argv[1][0];
    	req.op1 = atoi(argv[2]);
    	req.op2 = atoi(argv[3]);
    	req.clientPid = getpid();

    	printf("[Client %d] Sending request: %d %c %d\n",req.clientPid, req.op1, req.oper, req.op2);

    	// 2. Open Request FIFO and write
    	fifo_fd = open(FIFO_PATH, O_WRONLY);
    	if (fifo_fd == -1)
    	{
        	perror("[Client] Failed to open FIFO (Is Server running?)");
        	return 1;
    	}

    	if (write(fifo_fd, &req, sizeof(Request)) == -1)
    	{
        	perror("[Client] Failed to write Request to Server's Request FIFO");
        	close(fifo_fd);
        	exit(EXIT_FAILURE);
    	}

    	close(fifo_fd);

    	// 3. Connect to Message Queue to wait for result
    	mqKey = ftok("server.c", PROJ_ID_MQ);
    	mqId = msgget(mqKey, 0666);
    	if (mqId == -1)
    	{
        	perror("[Client] Failed to connect to Message Queue");
        	return 1;
    	}

    	// 4. Block-on-read from Message Queue (using our PID as mtype)
    	if(msgrcv(mqId, &msg, sizeof(MsgBuf) - sizeof(long),req.clientPid, 0) == -1)
    	{
        	perror("[Client] Message receive failed");
        	return 1;
    	}	


	if (msg.data.status == 0)
	{
    		printf("[Client %d] SUCCESS -> Result: %d\n",
           	req.clientPid, msg.data.result);
	}
	else
	{
    		printf("[Client %d] ERROR -> Operation failed (e.g. division by zero or invalid op)\n",req.clientPid);
	}
#ifdef DEBUG
        printf("%s: %s End.\n",__func__,__FILE__);
#endif

	return 0;
}
