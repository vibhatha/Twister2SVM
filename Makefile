BIN=../bin
EXECS=run
#MPICC?=mpicc
all: ${EXECS}
run: run.c
${MPICC} -o ${BIN}/run run.c
clean:
    rm -f ${BIN}/${EXECS}