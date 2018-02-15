BASE=code
BIN=bin
EXECS=run
#MPICC?=mpicc
CC=gcc
all: ${EXECS}

run: ${BASE}/run.c
	${CC} -o ${BIN}/run ${BASE}/run.c

clean:
	rm -f ${EXECS}
