.PHONY: all clean fclean re test

NAME = Sully
FLAGS = -Wall -Wextra -Werror
SRC = Sully.c
OBJ = $(SRC:.c=.o)
TEST = Sully_5.c

all: $(NAME)

$(NAME): $(OBJ)
	@clang $(FLAGS) $(SRC) -o $(NAME)

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)
	@/bin/rm -rf Sully_*

re: fclean all

test: re
	@./$(NAME)
	diff -s $(SRC) $(TEST)
