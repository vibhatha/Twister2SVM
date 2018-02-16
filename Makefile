#This make file build calls the sub folder make files
PROG = mpi_program
BIN = bin
BASE = src

all:
	@echo "Starting the Buiding of $(BASE) directory";
	+$(MAKE) -C $(BASE)
	@echo "Ending the Buiding of $(BASE) directory";
	@echo "installing the $(PROG) into $(BIN) directory"; cp -f $(BASE)/$(PROG) $(BIN)
	
clean:
	rm -f $(BASE)/*.o
	rm -f $(BASE)/$(PROG)
	rm -f $(BIN)/$(PROG)

.PHONY: all clean