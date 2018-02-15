#BASE=code
#BIN=bin
EXECS=run
#MPICC?=mpicc
CC=gcc
all: ${EXECS}

run: run.c
	${CC} -o run run.c

clean:
	rm -f ${BIN}/${EXECS}
