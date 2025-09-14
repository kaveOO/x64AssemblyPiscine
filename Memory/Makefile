NAME        = Memory
ASM         = nasm
LD          = ld

ASMFLAGS    = -f elf64
LDFLAGS     = -o $(NAME)

SRC         =	Types.asm			\
				Displacement.asm	\
				RetWords.asm		\
				Array.asm

OBJ         =	Types.o				\
				Displacement.o		\
				RetWords.o			\
				Array.o


$(NAME): $(OBJ) main.o
	gcc -o $(NAME) main.o $(OBJ)

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

main.o: main.c
	gcc -c main.c -o main.o

all: $(NAME)

clean:
	$(RM) $(OBJ)
	$(RM) main.o

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
