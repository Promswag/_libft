# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbaumgar <gbaumgar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/21 10:13:56 by gbaumgar          #+#    #+#              #
#    Updated: 2022/03/30 19:26:33 by gbaumgar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= libft.a

OUT_DIR			= ./
OBJ_DIR			= objs/
INC_DIR			= include/
SRC_DIR			= src/
SRC				=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c\
					ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c\
					ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c\
					ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c\
					ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
					ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c\
					ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c\
					get_next_line.c

PRINTF_DIR		= ./ft_printf/
PRINTF_SRC		=	ft_printf.c ft_printf_utils.c ft_printf_utils2.c\
					ft_printf_display_char.c ft_printf_display_str.c ft_printf_display_ptr.c\
					ft_printf_display_int.c ft_printf_display_uint.c ft_printf_display_hex.c\
					ft_printf_display_hash.c ft_printf_display_space.c ft_printf_display_sign.c 

OBJS			= ${SRC:%.c=${OBJ_DIR}%.o} ${PRINTF_SRC:%.c=${OBJ_DIR}%.o}

CC				= gcc
CFLAGS			= -Wall -Wextra -Werror
INCLUDE			= -I

all: ${NAME}

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}

${OBJ_DIR}%.o: %.c
	${CC} ${CFLAGS} $< -c -o $@

${OBJ_DIR}%.o: ${PRINTF_DIR}${SRC_DIR}%.c
	${CC} ${CFLAGS} -I${PRINTF_DIR}${INC_DIR} $< -c -o $@

clean:
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean ${NAME}

bonus: ${OBJS}
	ar rc ${NAME} ${OBJS}

