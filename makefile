
# makefile

CC=gcc
CFLAGS=-I.
DEPS = hello.h
OBJ = hello.o print_my_func.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -rf hellomake *.o
