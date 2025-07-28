section .bss
	GlobalVariable 	resd 0x01

section .text
	global _start

_start:
	mov rax, [rel GlobalVariable]
	jmp loop

loop:
	cmp rax, 0x2A
	je exit

	inc rax

	jne loop

exit:
	mov rdi, rax
	mov rax, 0x3C
	syscall
