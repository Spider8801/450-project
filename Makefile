# TARGETS=client serverC serverCS serverEE serverM

# CC=gcc
# CCOPTS=-Wall -Wextra

# .PHONY: all clean pristine

# all: $(TARGETS)

# clean:
# 	rm -f $(TARGETS)

# pristine: clean

# %: %.c
# 	$(CC) $(CCOPTS) -o $@ $<





all: serverC.c serverCS.c serverEE.c serverM.c client.c
gcc -o serverC serverC.c
gcc -o serverCS serverCS.c
gcc -o serverEE serverEE.c
gcc -o serverM serverM.c
gcc -o client client.c

serverC: serverC.o
	./serverC

serverCS: serverCS.o
	./serverCS

serverEE: serverEE.o
	./serverEE

serverM: serverM.c
	./serverM

clean: 
	$(RM) serverC
	$(RM) serverCS
	$(RM) serverEE
	$(RM) serverM
	$(RM) client
	$(RM) serverC.o
	$(RM) serverCS.o
	$(RM) serverEE.o
	$(RM) serverM.o
	$(RM) client.o