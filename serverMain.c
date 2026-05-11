/* 
	creates Threads..
	for reading requests form clients.
	for writing results back to clients.
*/
#include "includes.h"
#include "dataStructures.h"
#include "declarations.h"

int main()
{
    	// Block SIGINT in the main thread so it's inherited by all worker threads
    	// This allows our dedicated cleanupThread to exclusively catch it via sigwait
	
#ifdef DEBUG
	printf("%s: %s Begin.\n",__func__,__FILE__);
#endif
        sigset_t set;
        sigemptyset(&set);
        sigaddset(&set, SIGINT);
        pthread_sigmask(SIG_BLOCK, &set, NULL);

        printf("[Server] Initializing infrastructure...\n");
        Infra* infra = createInfra(); // All mechanisms are now safely tucked in here

        // 2: Start background cleanup thread to wait for Ctrl+C
        pthread_t cl_tid;
        pthread_create(&cl_tid, NULL, cleanupThread, infra);
        pthread_detach(cl_tid);

        // 3: Start background reader thread
        pthread_t rr_tid;
        pthread_create(&rr_tid, NULL, readResults, infra);
        pthread_detach(rr_tid);

        printf("[Server] Ready to accept clients.\n");

        while(1)
        {
                // Server blocks here until current clientHandler reads from FIFO
                sem_wait(&infra->threadSyncSem);

                pthread_t ch_tid;
                pthread_create(&ch_tid, NULL, clientHandler, infra);
                pthread_detach(ch_tid); // Allow thread to clean itself up automatically
	}
#ifdef DEBUG
	printf("%s: %s End.\n",__func__,__FILE__);
#endif
	return 0;
}
