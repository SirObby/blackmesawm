OBJS=obj/main.o

CFLAGS=-g -Wall -std=c99
LDFLAGS= `pkg-config --libs x11`

all: bmesa

bmesa: $(OBJS)
	gcc -o bmesa $(OBJS) $(LDFLAGS)

obj/%.o: %.c
	gcc -c -o $@ $< $(CFLAGS)