# linux-test
#
# Makefile #

CC = gcc
CFLAGS =
LIBS = -lm

debug:
CFLAGS += -g
calculator

release:
CGLAGS += -02
calculator

calcul: calculate.o main.o
gcc calculate.o main.o -o calcul $(LIBS)

calculate.o: calculate.c calculate.h gcc -c calculate.c $(CFLAGS)

main.o: main.c calculate.h
gcc -c main.c $(CFLAGS)

clean:
-rm calcul *.o *~

