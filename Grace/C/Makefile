.PHONY: all clean fclean re test

NAME = Grace
FLAGS = -Wall -Wextra -Werror
SRC = Grace.c
OBJ = $(SRC:.c=.o)
TEST = Grace_kid.c

all: $(NAME)

$(NAME): $(OBJ)
	@clang $(FLAGS) $(SRC) -o $(NAME)

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)
	@/bin/rm -rf $(TEST)

re: fclean all

test: re
	@./$(NAME)
	diff -s $(SRC) $(TEST)
