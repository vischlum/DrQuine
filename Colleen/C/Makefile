.PHONY: all clean fclean re test

NAME = Colleen
FLAGS = -Wall -Wextra -Werror
SRC = Colleen.c
OBJ = $(SRC:.c=.o)
TEST = tmp_Colleen

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
	@./$(NAME) > $(TEST)
	diff -s $(TEST) $(SRC)
