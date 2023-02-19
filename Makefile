NAME = libft_tester

LIBFT_PATH = ../libft/

LIBFT = $(LIBFT_PATH)libft.a

GTEST = gtest/*.a

INCLUDE = include/

SRC = $(addprefix src/, main.cpp)

OBJ = $(SRC:.cpp=.o)

TESTS = atoi bzero calloc

TESTS_BONUS =

CC = g++

CFLAGS = -I $(INCLUDE)

all: m

# Rule to compile all mandatory files with src and *.a
m: $(LIBFT) $(OBJ)
	@make -s $(TESTS)

# Rule to compile all bonus files with src and *.a
b: libft_bonus $(OBJ)
	@make -s $(TESTS_BONUS)

# Rule to compile a single file with src and *.a
%: tests/%_test.cpp $(LIBFT) $(OBJ)
	@$(CC) $(CFLAGS) -c $< -o $(<:.cpp=.o)
	@$(CC) $(<:.cpp=.o) $(OBJ) $(GTEST) $(LIBFT) -o $(NAME) && ./$(NAME)

.cpp.o:
	@$(CC) $(CFLAGS) -c $< -o $(<:.cpp=.o)

$(LIBFT):
	@make -s -C $(LIBFT_PATH)

libft_bonus:
	@make -s -C $(LIBFT_PATH) bonus

clean:
	@make -s -C $(LIBFT_PATH) clean
	@$(RM) $(OBJ) $(addprefix tests/, $(TESTS:=_test.o) $(TESTS_BONUS:=_test.o))

fclean:
	@make -s -C $(LIBFT_PATH) fclean
	@$(RM) $(OBJ) $(addprefix tests/, $(TESTS:=_test.o) $(TESTS_BONUS:=_test.o))
	@$(RM) $(NAME)

re: fclean all

.PHONY: all m b libft_bonus clean fclean re
