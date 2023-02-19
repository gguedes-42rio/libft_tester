NAME = libft_tester

LIBFT_PATH = ../libft/

LIBFT = $(LIBFT_PATH)libft.a

GTEST = gtest/*.a

INCLUDE = include/

SRC = $(addprefix src/, main.cpp)

OBJ = $(SRC:.cpp=.o)

TESTS = $(addprefix tests/, atoi_test.cpp bzero_test.cpp calloc_test.cpp)

TESTS_OBJ = $(TESTS:.cpp=.o)

TESTS_BONUS = $(addprefix tests/, )

TESTS_OBJ_BONUS = $(TESTS_BONUS:.cpp=.o)

CC = g++

CFLAGS = -I $(INCLUDE)

all: m

# Rule to compile all mandatory files with src and *.a
m: $(LIBFT) $(OBJ) $(TESTS_OBJ)
	$(CC) $(TESTS_OBJ) $(OBJ) $(GTEST) $(LIBFT) -o $(NAME) && ./$(NAME)

# Rule to compile all bonus files with src and *.a
b: libft_bonus $(OBJ) $(TESTS_OBJ_BONUS)
	$(CC) $(TESTS_OBJ_BONUS) $(OBJ) $(GTEST) $(LIBFT) -o $(NAME) && ./$(NAME)

# Rule to compile a single file with src and *.a
%: tests/%_test.cpp $(LIBFT) $(OBJ)
	$(CC) $(CFLAGS) -c $< -o $(<:.cpp=.o)
	$(CC) $(<:.cpp=.o) $(OBJ) $(GTEST) $(LIBFT) -o $(NAME) && ./$(NAME)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.cpp=.o)

$(LIBFT):
	make -C $(LIBFT_PATH)

libft_bonus:
	make -C $(LIBFT_PATH) bonus

clean:
	make -C $(LIBFT_PATH) clean
	$(RM) $(OBJ) $(TESTS_OBJ) $(TESTS_OBJ_BONUS)

fclean:
	make -C $(LIBFT_PATH) fclean
	$(RM) $(OBJ) $(TESTS_OBJ) $(TESTS_OBJ_BONUS)
	$(RM) $(NAME)

re: fclean all

.PHONY: all m b libft_bonus clean fclean re
