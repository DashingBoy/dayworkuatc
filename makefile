#edit:b.o b1.o
#       gcc -o edit b.o b1.o
#b.o:b.h b.c b1.c
#       gcc -c b.c
#b1.o:b1.c b.h
#       gcc -c b1.c
#.PHONY:clean
#clean:
#       rm -f edit b.o b1.o
#CC=gcc
#objects=b.o b1.o
#CFLAGS=-Wall -g
#edit:$(objects)
#       $(CC) $(objects) -o edit
#%.o:%.c b.h
#       $(CC) -c $< -o $@
#%.o:%.c b.h
#       $(CC) -c $< -o $@
#.PHONY:clean
#clean:
#       rm -f edit $(objects)

CC=gcc
fileo=main.o sort.o algo.o
objects:main.o sort.o algo.o
	$(CC) -o $@ $^
%.o:%c
	$(CC) -c $<
clean:
	rm -f objects $(fileo)

