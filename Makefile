CC=clang
CFLAGS=-g
BINS=server

all: $(BINS)

%server: %server.o
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -rf *.dSYM $(BINS) 