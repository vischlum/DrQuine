.PHONY: all clean fclean re test

NAME = Colleen
FLAGS = -Wall -Wextra -Werror -no-pie
SRC = Colleen.s
OBJ = $(SRC:.s=.o)
TEST = tmp_Colleen

all: $(NAME)

$(NAME): $(OBJ)
	@gcc $(FLAGS) $(SRC) -o $(NAME)

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)
	@/bin/rm -rf $(TEST)

re: fclean all

test: re
	@./$(NAME) > $(TEST)
	diff -s $(TEST) $(SRC)
