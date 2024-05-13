NAME = libftprintf.a

SRCS = $(wildcard ft_*.c)
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
OBJ = $(SRCS:.c=.o)
INCLUDES = libftprintf.h

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o: %.c $(INCLUDES)
	$(CC) $(CFLAGS) -I $(INCLUDES) -c -o $@ $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
