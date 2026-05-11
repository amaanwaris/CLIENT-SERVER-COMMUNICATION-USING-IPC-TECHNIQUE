#include "includes.h"
#include "dataStructures.h"
#include "declarations.h"

// Thread that monitors Shared Memory and routes to Message Queue
void* readResults(void* arg)
{
    	Infra* infra = (Infra*) arg;
#ifdef DEBUG
        printf("%s: %s Begin.\n",__func__,__FILE__);
#endif


    	struct sembuf waitFull = {1, -1, 0};  // Wait for Sem 1 (Full)
    	struct sembuf postEmpty = {0, 1, 0};  // Post Sem 0 (Empty)
    	MsgBuf msg;

    	printf("[Server] readResults thread is running and listening...\n");

    	while(1)
   	{
        	// Block until a vendor writes to SHM using the sysvSemId in Infra
        	semop(infra->sysvSemId, &waitFull, 1);

        	msg.mtype = infra->shmPtr->clientPid;
        	msg.data = *(infra->shmPtr); // Read directly from pre-mapped pointer

        	// Send result to the exact client via Message Queue
        	msgsnd(infra->mqId, &msg, sizeof(MsgBuf) - sizeof(long), 0);

        	// Unblock Shared Memory for next vendor
        	semop(infra->sysvSemId, &postEmpty, 1);
    	}
#ifdef DEBUG
        printf("%s: %s End.\n",__func__,__FILE__);
#endif

    	return NULL;
}
