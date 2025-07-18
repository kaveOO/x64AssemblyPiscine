global MulFunction

section .text

MulFunction:
	mov rax, 10
	mov rdx, 4
	mul rdx

	ret
