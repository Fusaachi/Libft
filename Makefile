# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pgiroux <pgiroux@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/22 17:00:17 by pgiroux           #+#    #+#              #
#    Updated: 2024/09/11 14:06:48 by pgiroux          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

FILE =	ft_bzero ft_isalnum ft_isalpha ft_isascii ft_isprint ft_memcmp ft_memmove ft_strchr ft_strlen ft_strnstr ft_tolower ft_isdigit ft_memchr ft_memcpy ft_memset ft_strlcpy ft_strncmp ft_strrchr ft_toupper ft_strlcat ft_atoi ft_calloc ft_strdup ft_substr ft_strjoin ft_strtrim ft_split ft_itoa ft_strmapi ft_striteri ft_putchar_fd ft_putstr_fd ft_putnbr_fd ft_putendl_fd

FILE_BONUS = ft_lstnew_bonus ft_lstadd_front_bonus ft_lstsize_bonus ft_lstlast_bonus ft_lstadd_back_bonus ft_lstdelone_bonus ft_lstclear_bonus ft_lstiter_bonus ft_lstmap_bonus

FILE_DIR = ./src/
BONUS_DIR = ./src_bonus/
OBJ_DIR = ./obj/

FILES = $(addprefix $(FILE_DIR), $(addsuffix .c, $(FILE)))
OBJS = $(addprefix $(OBJ_DIR), $(addsuffix .o, $(FILE)))

FILES_BONUS = $(addprefix $(BONUS_DIR), $(addsuffix .c, $(FILE_BONUS)))
OBJS_BONUS = $(addprefix $(OBJ_DIR), $(addsuffix .o, $(FILE_BONUS)))

all : $(NAME)

$(OBJ_DIR)%.o: $(FILE_DIR)%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR)%.o: $(BONUS_DIR)%.c
	@$(CC) $(CFLAGS) -c -o $@ $<
	

$(NAME) : $(OBJS) $(OBJS_BONUS)
	ar rc $(NAME) $(OBJS)
	ar rc $(NAME) $(OBJS_BONUS)
	
clean :
	rm -rf $(OBJ_DIR) 

fclean : clean
	rm -rf $(NAME)

re : fclean all
	make

.PHONY : all clean fclean re
