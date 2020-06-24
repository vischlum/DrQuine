.PHONY: all clean fclean re test

NAME = Grace
FLAGS = -Wall -Wextra -Werror -no-pie
SRC = Grace.s
OBJ = $(SRC:.s=.o)
TEST = Grace_kid.s

all: $(NAME)

$(NAME): $(OBJ)
	@gcc $(FLAGS) $(SRC) -o $(NAME)

clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)
	@/bin/rm -rf $(TEST)

re: fclean all

test: re
	@./$(NAME)
	diff -s $(SRC) $(TEST)
