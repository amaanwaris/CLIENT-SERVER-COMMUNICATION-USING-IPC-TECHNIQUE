CC = gcc
CFLAGS = -Wall -pthread

VENDORS = vendorAdd vendorSub vendorMul vendorDiv vendorMod
BINS = server client $(VENDORS)

# List of separated object files for the modular server
SERVER_OBJS = serverMain.o cleanupThread.o createInfra.o readResults.o clientHandler.o

all: $(BINS)

# Compile Server by linking its modular objects
server: $(SERVER_OBJS)
	$(CC) $(CFLAGS) -o server $(SERVER_OBJS)

# Compile individual server modules
%.o: %.c declarations.h dataStructures.h includes.h
	$(CC) $(CFLAGS) -c $<

# Compile Client
client: clientProgram.c declarations.h
	$(CC) $(CFLAGS) -o client clientProgram.c

# Compile Vendors dynamically
vendor%: vendor%.c declarations.h
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(BINS) *.o /tmp/calc_req_fifo
