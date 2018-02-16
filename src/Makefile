#This make file build the src folder
PROG = mpi_program
BIN = ../bin/
bin = bin
BASE = src

# provide all the object files here
OBJ = main.o

# General purpose flags.
CC = mpicxx -O3
LFLAG = -L${MPI_LFLAG}
CFLAG = -c -I${MPI_INCDIR}
OFLAG = -o

all: $(PROG)

install: all
	@echo "installing the $(PROG) into $(bin) directory"; cp -f $(PROG) $(BIN)

$(PROG) : $(OBJ)	
	$(CC) $(OFLAG) $(PROG) $(OBJ) $(LFLAG)
%.o : %.cpp
	$(CC) $(CFLAG) $< $(OFLAG) $@

#if header file dependency is there for any Obj, Add here
main.o: 

clean:
	rm -f *.o $(PROG) 

.PHONY: all install clean