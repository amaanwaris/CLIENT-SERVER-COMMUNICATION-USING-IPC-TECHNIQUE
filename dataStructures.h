/*
 * dataStrctures.h
 * defined all user define data Strctures used in the project.
 */

#ifndef DATA_STRUCTURES_H
#define DATA_STRUCTURES_H

#include "includes.h"

// Structure representing a calculation request
typedef struct
{	
	pid_t clientPid;
	char oper;
	int op1;
	int op2;
} Request;

// Structure representing the calculated result
typedef struct
{
	pid_t clientPid;
	int result;
	int status;
} Result;

// Structure for the Message Queue buffer
typedef struct
{
	long mtype;
	Result data;
} MsgBuf;

// Infrastructure structure to hold ALL IPC and synchronization mechanisms
typedef struct
{
	int shmId;
	int mqId;
	int sysvSemId;
	int vendorPipe[2];       // Shared pipe for all vendors
	key_t shmKey;
	int dummy_read_fd;
	int dummy_write_fd;	// NEW: Keeps FiFo buffer alive
	key_t mqKey;		// New: keeps Fifo buffer alive
	key_t sysvSemKey;
	Result* shmPtr;          // Mapped memory pointer
	sem_t threadSyncSem;     // POSIX Semaphore to throttle clientHandlers
	pthread_mutex_t statsMutex; // Mutex for totalRequests counter
	pthread_mutex_t pipeMutex; // Mutex for totalRequests counter
	int totalRequests;
}Infra;

#if defined(__GNU_LIBRARY__) && !defined(_SEM_SEMUN_UNDEFINED)
#else
union semun
{
    	int val;
    	struct semid_ds *buf;
    	unsigned short *array;
    	struct seminfo *__buf;
};
#endif

#endif  // DATA_STRUCTURES_H 
