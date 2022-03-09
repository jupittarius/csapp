CC = /usr/bin/gcc
CFLAGS = -Wall -g -O2 -Werror -std=gnu99 -Wno-unused-function

EXECUTABLE = csapp

SRC_DIR = ./src

CODE = ./src/hardware/memory/instruction.c ./src/disk/code.c ./src/hardware/memory/dram.c ./src/hardware/cpu/mmu.c  ./src/main.c

.PHONY: csapp
main:
	$(CC) $(CFLAGS) -I$(SRC_DIR) $(CODE) -o $(EXECUTABLE)

run:
	./$(EXECUTABLE)