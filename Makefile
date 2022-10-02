# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ysay <ysay@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/10 15:44:43 by ysay              #+#    #+#              #
#    Updated: 2022/10/02 15:20:34 by ysay             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= $(NAME1) $(NAME2) $(NAME3)
NAME1= Colleen
NAME2= Grace
NAME3= Sully

_SRC= $(patsubst %,%.c,$(NAME))
_OBJ= $(_SRC:.c=.o)

SDIR=
ODIR=
IFLAG= -I./

SRC= $(patsubst %,$(SDIR)%,$(_SRC))
OBJ= $(patsubst %,$(ODIR)%,$(_OBJ))
INC= $(patsubst %,$(IFLAG)%,$(_IDIR))

CC= gcc

FLAGS= -Wall -Wextra -Werror

.PHONY: all clean fcelan re

all: $(NAME)

$(NAME): $(OBJ) $(EXLIB)
	$(CC) $(FLAGS) $(INC) $(ODIR)$@.o $(EXLIB) -o $@
$(ODIR)%.o : $(SDIR)%.c 
	$(CC) $(FLAGS) $(INC) -c  $< -o $@


clean:
	rm -rf $(OBJ)
fclean: clean
	rm -rf $(NAME)
re: fclean all
