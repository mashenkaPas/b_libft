# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mpas <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/10 22:16:55 by mpas              #+#    #+#              #
#    Updated: 2018/09/10 22:55:33 by mpas             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra -std=c99
HEADER = libft.h

CFILES = ft_isdigit.c ft_memset.c ft_strchr.c ft_strcmp.c ft_strcpy.c ft_strdup.c ft_strlen.c ft_strncpy.c ft_tolower.c ft_toupper.c
OFILES = *.o

all: $(NAME)

$(NAME):
	gcc $(CFLAGS) -I$(HEADER) -c $(CFILES)
	ar rc $(NAME) $(OFILES)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OFILES)
fclean: clean
	/bin/rm -f $(NAME)
re: fclean all
