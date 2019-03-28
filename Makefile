# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: axelgerv <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/22 17:09:22 by axelgerv          #+#    #+#              #
#    Updated: 2019/03/27 18:17:53 by axelgerv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OK_COLOR = \033[32m
NO_COLOR = \033[m

OK = $(OK_COLOR)OK$(NO_COLOR)

NAME = fdf

FLAGS = -Wall -Wextra -Werror

SRC =	main.c \

OBJ =	main.o \

all: $(NAME)

$(NAME): $(OBJ)
	@make -C libft/
	@gcc -o $(NAME) $(OBJ) $(FLAGS) -L libft/ -lft -lmlx -framework OpenGL -framework AppKit
	@echo "[Fdf] | Compilation						$(OK)"

%.o: %.c
	@gcc $(FLAGS) -I libft/ -c $< -o $@

clean:
	@make -C libft/ clean
	@/bin/rm -f $(OBJ)
	@echo "[Fdf] | clean							$(OK)"

fclean: clean
	@make -C libft/ fclean
	@/bin/rm -f $(NAME)
	@echo "[Fdf] | fclean							$(OK)"

re: fclean all

.PHONY: all clean fclean re
