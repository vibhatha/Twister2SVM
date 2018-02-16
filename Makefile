#This make file build calls the sub folder make files
PROG = mpi_program
BIN = bin
BASE = src

all:
	@echo "Starting the Buiding of $(BIN) directory";
	+$(MAKE) install -C $(BASE)
	@echo "Ending the Buiding of $(BIN) directory";
	
clean:
	rm -f $(BASE)/*.o
	rm -f $(BASE)/$(PROG)
	rm -f $(BIN)/$(PROG)

.PHONY: all clean