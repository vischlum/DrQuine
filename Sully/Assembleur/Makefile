.PHONY: all clean fclean re test

NAME = Sully
FLAGS = -Wall -Wextra -Werror -no-pie
SRC = Sully.s
OBJ = $(SRC:.s=.o)
TEST = Sully_5.s

all: $(NAME)

$(NAME): $(OBJ)
	@gcc $(FLAGS) $(OBJ) -o $(NAME)

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)
	@/bin/rm -rf Sully_*

re: fclean all

test: re
	@./$(NAME)
	diff -s $(SRC) $(TEST)
