# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: axelgerv <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/22 17:09:22 by axelgerv          #+#    #+#              #
#    Updated: 2019/02/27 17:24:25 by axelgerv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf

FLAGS = -Wall -Wextra -Werror

SRC =	main.c \

OBJ =	main.o \

all: $(NAME)

$(NAME): $(OBJ)
	@make -C libft/
	@echo "\033[33;32m=== COMPILATION DE LA LIBFT ===\t\t\t\t[ ✓ ]"
	@gcc -o $(NAME) $(OBJ) $(FLAGS) -L libft/ -lft -lmlx -framework OpenGL -framework AppKit
	@echo "\033[33;32m=== CREATION DE L'EXECUTABLE \"$(NAME)\" ===\t\t\t[ ✓ ]"

%.o: %.c
	@gcc $(FLAGS) -I libft/ -c $< -o $@

clean:
	@make -C libft/ clean
	@/bin/rm -f $(OBJ)

fclean: clean
	@make -C libft/ fclean
	@/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
