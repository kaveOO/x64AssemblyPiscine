NAME        = ExitCode
ASM         = nasm
LD          = ld

ASMFLAGS    = -f elf64
LDFLAGS     = -o $(NAME)

SRC         = ExitCode.asm
OBJ         = ExitCode.o

$(NAME): $(OBJ)
	$(LD) $(LDFLAGS) $(OBJ)

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
