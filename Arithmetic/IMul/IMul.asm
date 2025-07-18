global IMulFunction

section .text

IMulFunction:
	mov rax, -42
	mov rdx, 5
	imul rdx

	ret
