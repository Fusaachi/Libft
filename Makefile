# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pgiroux <pgiroux@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/22 17:00:17 by pgiroux           #+#    #+#              #
#    Updated: 2024/07/29 10:42:17 by pgiroux          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC =	$(addprefix src/, ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isprint.c ft_memcmp.c ft_memmove.c ft_strchr.c ft_strlen.c ft_strnstr.c ft_tolower.c ft_isdigit.c ft_memchr.c ft_memcpy.c ft_memset.c ft_strlcpy.c ft_strncmp.c ft_strrchr.c ft_toupper.c ft_strlcat.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c)
	
BONUS = $(addprefix src_bonus/, ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c)

SRCS_OBJ = $(SRC:.c=.o)

BONUSS_OBJ = $(BONUS:.c=.o)

HEADER_DIR =./

CC = cc

CFLAGS = -Wall -Wextra -Werror



all: $(NAME)

.c.o:
	${CC} ${CFLAGS} -I ${HEADER_DIR} -c $< -o ${<:.c=.o}

$(NAME) : $(SRCS_OBJ)
	ar rc $(NAME) $(SRCS_OBJ)

bonus : $(BONUSS_OBJ)
	ar rc $(NAME) $(BONUSS_OBJ)

clean :
	rm -f $(SRCS_OBJ) $(BONUSS_OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re
