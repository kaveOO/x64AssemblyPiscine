section .data
    msg db "Hello, World", 0xA	; 1010 -> 10 -> '\n'
    len equ $ - msg

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, len
	syscall

	mov rax, 0x3C				; 0011 1100 	-> 60 sys_exit
	xor rdi, rdi
	syscall
