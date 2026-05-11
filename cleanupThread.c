#include "includes.h"
#include "dataStructures.h"
#include "declarations.h"

// A dedicated thread to wait for SIGINT and safely tear down the infrastructure
void* cleanupThread(void* arg)
{
#ifdef DEBUG
        printf("%s: %s Begin.\n",__func__,__FILE__);
#endif

        Infra* infra = (Infra*)arg;
        sigset_t set;
        int sig;

        sigemptyset(&set);
        sigaddset(&set, SIGINT);

        // Block exactly here until SIGINT is fired
        sigwait(&set, &sig);

        printf("\n[Server] Shutting down and cleaning all IPC resources...\n");
        close(infra->dummy_read_fd);
        close(infra->dummy_write_fd);
        unlink(FIFO_PATH);

        // Destroy IPCs
        if (infra->shmPtr)
                shmdt(infra->shmPtr);
        if (infra->shmId != -1)
                shmctl(infra->shmId, IPC_RMID, NULL);
        if (infra->mqId != -1)
                msgctl(infra->mqId, IPC_RMID, NULL);
        if (infra->sysvSemId != -1)
                semctl(infra->sysvSemId, 0, IPC_RMID);

        // Clean up local FDs and Primitives
        close(infra->vendorPipe[0]);
        close(infra->vendorPipe[1]);
        sem_destroy(&infra->threadSyncSem);
        pthread_mutex_destroy(&infra->statsMutex);
        pthread_mutex_destroy(&infra->pipeMutex);

        free(infra);
        exit(0);
#ifdef DEBUG
        printf("%s: %s End.\n",__func__,__FILE__);
#endif

        return NULL;
}
