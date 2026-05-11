# Client-Server Communication using IPC Techniques on Linux

## Overview
This project implements a high-performance client-server communication system on Linux using multiple Inter-Process Communication (IPC) techniques. The system is designed to support scalable and efficient communication between multiple clients and the server using multi-threading and synchronization mechanisms.

The project utilizes POSIX Threads (pthreads), Shared Memory, FIFOs (Named Pipes), Pipes, and Semaphores to achieve reliable and low-latency communication in a concurrent environment.

---

# Key Features
- Multi-threaded client-server architecture using POSIX Threads
- Concurrent handling of multiple client requests
- IPC-based communication using:
  - Shared Memory
  - FIFOs (Named Pipes)
  - Pipes
- Semaphore-based synchronization
- Thread-safe shared resource management
- Linux signal handling and event-driven execution
- Efficient process communication and data transfer
- Modular and maintainable project structure
- Bash automation support using shell scripts

---

# Tech Stack
- C Programming
- Linux (Ubuntu)
- POSIX Threads (pthreads)
- IPC Mechanisms
- Semaphores
- System Programming
- Bash Scripting

---

# Concepts Used

## 1. Inter-Process Communication (IPC)
IPC allows different processes to communicate and share data with each other in Linux.

Used in this project for:
- Client-server communication
- Data transfer between processes
- Synchronization between multiple clients

---

## 2. Shared Memory
Shared Memory is the fastest IPC mechanism because multiple processes access the same memory region directly.

Used for:
- Fast data exchange
- Reducing communication overhead
- Sharing request and response data

Advantages:
- High speed
- Efficient communication
- Low CPU usage

---

## 3. Message Queues
Message Queues allow processes to exchange messages in an organized way.

Used for:
- Sending structured messages
- Managing multiple client requests
- Queue-based communication

Advantages:
- Asynchronous communication
- Easy message handling
- Better process coordination

---

## 4. FIFOs (Named Pipes)
FIFOs are special files used for communication between unrelated processes.

Used for:
- Client-to-server communication
- Passing requests and responses
- Sequential data transfer

Advantages:
- Simple implementation
- Reliable communication
- Works between independent processes

---

## 5. Pipes
Pipes provide one-way communication between processes.

Used for:
- Internal process communication
- Parent-child data transfer
- Stream-based communication

Advantages:
- Fast communication
- Lightweight mechanism
- Easy to use

---

## 6. POSIX Threads (pthreads)
POSIX Threads are used for multi-threading in Linux applications.

Used for:
- Handling multiple clients simultaneously
- Concurrent request processing
- Improving system performance

Advantages:
- Parallel execution
- Better CPU utilization
- Faster response handling

---

## 7. Semaphores
Semaphores are synchronization tools used to control access to shared resources.

Used for:
- Synchronizing threads
- Preventing simultaneous access
- Managing critical sections

Advantages:
- Prevents conflicts
- Maintains data consistency
- Avoids race conditions

---

## 8. Mutex
Mutex (Mutual Exclusion) is used to allow only one thread to access a shared resource at a time.

Used for:
- Thread synchronization
- Shared memory protection
- Safe data modification

Advantages:
- Prevents data corruption
- Ensures thread safety
- Improves reliability

---

## 9. Synchronization
Synchronization ensures proper execution order among threads and processes.

Used for:
- Coordinating multiple threads
- Preventing resource conflicts
- Maintaining execution order

Advantages:
- Stable execution
- Reliable communication
- Better concurrency control

---

## 10. Linux Signals
Signals are software interrupts used for process communication and control.

Used for:
- Event notifications
- Process control
- Graceful termination

Advantages:
- Fast event handling
- Efficient process management
- Asynchronous communication

---

## 11. Multi-threading
Multi-threading allows multiple threads to run concurrently within a process.

Used for:
- Serving multiple clients
- Parallel task execution
- High-performance communication

Advantages:
- Faster processing
- Better responsiveness
- Improved scalability

---

## 12. System Programming
System Programming involves low-level programming for operating system interaction.

Used for:
- File handling
- Process management
- IPC implementation
- Thread management

Advantages:
- Efficient resource control
- High performance
- Better system interaction

---

# Synchronization Techniques

## 1. POSIX Semaphores
POSIX Semaphores are used to control access to shared resources among threads and processes.

Purpose:
- Thread synchronization
- Resource access control
- Critical section protection

Benefits:
- Prevents simultaneous access
- Avoids inconsistencies
- Ensures safe execution

---

## 2. Mutex
Mutex locks ensure only one thread accesses shared data at a time.

Purpose:
- Shared data protection
- Thread-safe operations
- Preventing conflicts

Benefits:
- Avoids data corruption
- Prevents race conditions
- Maintains consistency

---

## 3. Thread Synchronization
Thread synchronization coordinates execution among multiple threads.

Purpose:
- Ordered execution
- Proper resource sharing
- Controlled communication

Benefits:
- Stable processing
- Better concurrency handling
- Efficient task execution

---

## 4. Shared Resource Protection
Shared resources must be protected when multiple threads access them.

Purpose:
- Safe shared memory access
- Controlled data modification
- Resource integrity

Benefits:
- Prevents corruption
- Improves reliability
- Maintains data accuracy

---

## 5. Race Condition Prevention
Race conditions occur when multiple threads modify shared data simultaneously.

Prevention Methods:
- Mutex locks
- Semaphores
- Critical sections

Benefits:
- Correct program execution
- Reliable output
- Thread-safe communication

---

# Project Structure

## Core Files

### Client Side
- `clientProgram.c` → Client communication logic
- `clientHandler.c` → Handles client requests

### Server Side
- `serverMain.c` → Main server execution
- `cleanUpThread.c` → Thread cleanup and management

### IPC & Communication
- `createInfra.c` → IPC infrastructure creation
- `dataStructures.h` → Shared data structures
- `declarations.h` → Function declarations
- `includes.h` → Header includes

### Vendor Operations
- `vendorAdd.c`
- `vendorSub.c`
- `vendorMul.c`
- `vendorDiv.c`

### Utility & Processing
- `readResults.c`
- `runClient`
- `runClient.sh`

### Build & Configuration
- `Makefile`
- `README.md`

---

# System Architecture

## 1. Server Initialization
- Creates IPC resources
- Initializes semaphores and threads
- Waits for client requests

## 2. Client Request Generation
- Multiple clients send requests simultaneously
- Requests are handled using pthreads

## 3. IPC Communication
- Shared Memory used for fast communication
- FIFOs and Pipes used for structured data transfer

## 4. Synchronization
- Semaphores ensure safe concurrent access
- Prevents race conditions and data corruption

## 5. Result Processing
- Vendor operation modules process requests
- Results are returned to clients efficiently

---

# How to Run

## Compile the Project
```bash
make
