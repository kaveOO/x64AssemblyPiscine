global AddFunction

section .text

AddFunction:
	mov rcx, 5
	mov rdx, 5
	add rcx, rdx

	mov rax, rcx	; rax is return value register
	ret
