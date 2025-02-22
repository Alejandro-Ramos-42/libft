SRC = \
	ft_isalpha.c\
	ft_isdigit.c\
	ft_isalnum.c\
	ft_isascii.c\
	ft_isprint.c\
	ft_strlen.c\
	ft_memset.c\
	ft_bzero.c\
	ft_memcpy.c\
	ft_memmove.c\
	ft_strlcpy.c\
	ft_strlcat.c\
	ft_toupper.c\
	ft_tolower.c\
	ft_strchr.c\
	ft_strrchr.c\
	ft_strncmp.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_strnstr.c\
	ft_atoi.c\
	ft_calloc.c\
	ft_strdup.c\
	ft_substr.c\
	ft_itoa.c\
	ft_hxtoa.c\
	ft_printf_itoa.c\
	ft_printf_utoa.c\
	ft_strjoin.c\
	ft_strtrim.c\
	ft_split.c\
	ft_strmapi.c\
	ft_striteri.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_putunbr_fd.c\
	ft_print_memory.c\
	ft_lstnew.c\
	ft_lstadd_front.c\
	ft_lstsize.c\
	ft_lstlast.c\
	ft_lstadd_back.c\
	ft_lstdelone.c\
	ft_lstclear.c\
	ft_lstiter.c\
	ft_lstmap.c\
	ft_printf/ft_printf.c\
	ft_printf/parsing.c\
	ft_printf/apply_specifiers.c\
	ft_printf/ft_printf_c_s_u.c\
	ft_printf/ft_printf_d_i.c\
	ft_printf/ft_printf_x_p.c\
	get_next_line/get_next_line.c\
	get_next_line/get_next_line_utils.c

OBJ = $(SRC:.c=.o)
CC = cc
CFLAGS = -Wall -Werror -Wextra -fPIC
NAME = libft.a

# Compile libft
$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
	@rm *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Targets
all: $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
