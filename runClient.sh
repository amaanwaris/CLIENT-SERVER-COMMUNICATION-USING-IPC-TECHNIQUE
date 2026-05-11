#!/bin/bash

#unlink "/tmp/calcReqFifo"

echo "Cleaning up previous builds..."
make clean

# build all (server, clientApp and all vendors...)
echo "Building the fully modularized project..."
make
if [ $? -me 0 ]
then
    echo "Compilation failed! Check the Makefile output."
    exit 1
fi

echo "---------------------------------------------"
echo "Starting the Server in the background..."
./server &
SERVER_PID=$!

# Brief pause to ensure IPC structures initialize before clients connect
sleep 1

echo "---------------------------------------------"
echo "Firing 5 client requests concurrently..."

./client + 10 5 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client + 10 5 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client + 10 5 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client + 10 5 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client + 10 5 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard
./client / 100 5 &
./client % 43 10 &
./client - 20 8 &
./client \* 6 7 &   # Escape the asterisk so bash doesn't expand it as a wildcard

# Wait for all background client processes to finish
wait

echo "---------------------------------------------"
echo "All clients finished. Sending termination signal to Server..."

# Send SIGINT (Ctrl+C equivalent).
# Our dedicated cleanupThread catches this and safely clears the struct properties
kill -2 $SERVER_PID
wait $SERVER_PID 2>/dev/null

echo "Cleaning up binaries and object files..."
make clean
echo "Done!"
