/*
 * declarations.h
 * All MACRO definitions,
 * All function declarations.
 */

#ifndef DECLARATIONS_H
#define DECLARATIONS_H

#include "includes.h"
#include "dataStructures.h"

#define FIFO_PATH "/tmp/calcReqFifo"
#define PROJ_ID_SHM 'S'
#define PROJ_ID_MQ  'M'
#define PROJ_ID_SEM 'E'

// Function Prototypes (No globals allowed)
void* cleanupThread(void* arg);
Infra* createInfra();
void* readResults(void* arg);
void* clientHandler(void* arg);

#endif // DECLARATIONS_H
