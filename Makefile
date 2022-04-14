# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: drubio-m <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/13 15:19:15 by drubio-m          #+#    #+#              #
#    Updated: 2022/04/14 20:45:14 by drubio-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_c.c ft_s.c ft_p.c ft_d-i.c ft_u.c ft_x-X.c ft_printf.c
OBJS = $(SRC:.c=.o)
C = gcc -c
FLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a
RM =  /bin/rm -f

#.SILENT:
$(NAME): $(OBJS)
	$(C) $(FLAGS) $(SRC)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all fclean clean re
