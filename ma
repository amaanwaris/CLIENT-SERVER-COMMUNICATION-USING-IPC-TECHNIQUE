# Makefile - simple, robust

CC      := gcc
CFLAGS  := -c -Wall -Wextra
DEFS    := -DDEBUG
TARGET  := server

# sources and objects
SRC_FILES := $(wildcard *.c)
OBJ_FILES := $(patsubst %.c,%.o,$(SRC_FILES))

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) -o $@ $(OBJ_FILES)

# build .o from .c
%.o: %.c
	$(CC) $(CFLAGS) $(DEFS) -o $@ $<

clean:
	-rm -f $(OBJ_FILES) $(TARGET)

     
