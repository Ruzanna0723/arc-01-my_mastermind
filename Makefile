CC = gcc
CFLAGS = -Wall -Wextra -std=c11
LDFLAGS = -lm

SRCS = main.c
OBJS = $(SRCS:.c=.o)
EXEC = mastermind

.PHONY: all clean

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXEC) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(EXEC)
