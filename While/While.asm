section .data
	text	db "In the loop", 0xA
	textLen equ $ - text

global While

section .text

While:
	mov rbx, 0

loop:
	cmp rbx, 1337
	je exit
	add rbx, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, textLen
	syscall

	jne loop

exit:
	mov rax, rbx
	ret
