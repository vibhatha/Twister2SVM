EXECS=run
MPICC?=mpicc

all: ${EXECS}

run: run.c
	${MPICC} -o run run.c

clean:
	rm -f ${EXECS}

