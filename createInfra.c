#include "includes.h"
#include "dataStructures.h"
#include "declarations.h"

// Creates and encapsulates all IPC mechanisms into the Infra structure
Infra* createInfra()
{
	union semun su;
#ifdef DEBUG
		printf("%s: %s : Begin.\n",__func__,__FILE__);		
#endif

	//1: Allocate space for struct Infra.
	Infra* infra = (Infra*)malloc(sizeof(Infra));
	if (!infra)
	{
		perror("Memory allocation failed for Infra");
        	exit(1);
    	}

    	// 2. Create Request FIFO
    	if (mkfifo(FIFO_PATH, 0666) == -1)
    	{
        	perror("mkfifo");
        	exit(EXIT_FAILURE);
    	}
	//
	infra->dummy_read_fd = open(FIFO_PATH, O_RDONLY | O_NONBLOCK);
	infra->dummy_write_fd = open(FIFO_PATH, O_WRONLY);

    	// 3.Generate keys
    	infra->shmKey = ftok("server.c", PROJ_ID_SHM);
    	infra->mqKey = ftok("server.c", PROJ_ID_MQ);
    	infra->sysvSemKey = ftok("server.c", PROJ_ID_SEM);

    	// 4. Create Shared Memory & map it instantly (removing shmat from readResults)
    	infra->shmId = shmget(infra->shmKey, sizeof(Result), IPC_CREAT | 0666);
    	if (infra->shmId == -1)
    	{
        	perror("shmget");
        	exit(EXIT_FAILURE);
    	}

    	infra->shmPtr = (Result*) shmat(infra->shmId, NULL, 0);
    	if (!infra->shmPtr)
    	{
        	perror("shmat");
        	exit(EXIT_FAILURE);
    	}

        // 5. Create Message Queue
    	infra->mqId = msgget(infra->mqKey, IPC_CREAT | 0666);
    	if (infra->mqId == -1)
    	{
        	perror("msgget");
        	exit(EXIT_FAILURE);
    	}

    	// 4. Create System V Semaphores (Set of 2: [0]=Empty, [1]=Full)
    	infra->sysvSemId = semget(infra->sysvSemKey, 2, IPC_CREAT | 0666);
    	if (infra->sysvSemId == -1)
    	{
        	perror("semget");
        	exit(EXIT_FAILURE);
    	}

    	su.val = 1;
    	if (semctl(infra->sysvSemId, 0, SETVAL, su) == -1) // Sem 0 (Empty) initialized to 1
    	{
        	perror("semctl");
        	exit(EXIT_FAILURE);
    	}

    	su.val = 0;
    	if (semctl(infra->sysvSemId, 1, SETVAL, su) == -1) // Sem 1 (Full) initialized to 0
    	{
        	perror("semctl");
        	exit(EXIT_FAILURE);
    	}
	
	// 5. Create Shared Pipe (Mutex-protected in clientHandler)
    	if (pipe(infra->vendorPipe) == -1)
    	{
        	perror("Pipe creation failed");
        	exit(1);
    	}

    	// 6. Initialize Synchronization primitives inside Infra
    	if (sem_init(&infra->threadSyncSem, 0, 1) == -1)
    	{
        	perror("Pipe creation failed");
        	exit(1);
    	}

//7.	Declare and initialize MUTEX
    	pthread_mutex_init(&infra->statsMutex, NULL);
    	pthread_mutex_init(&infra->pipeMutex, NULL);
    	infra->totalRequests = 0;

#ifdef DEBUG
		printf("%s: %s : Begin.\n",__func__,__FILE__);		
#endif
    	return infra;
}

