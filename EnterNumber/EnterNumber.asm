section .data
	askMsg db "Enter a number : "
	askLen equ $ - askMsg
	answMsg db "You have entered : "
	answLen equ $ - answMsg

section .bss
	num resb 5			;	Allocate 5 bytes for number

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, askMsg
	mov rdx, askLen
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, num
	mov rdx, 5
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, answMsg
	mov rdx, answLen
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, num
	mov rdx, 5
	syscall

	mov rax, 0x3C		;	Exit code 0011 1100 -> sys_exit
	xor rdi, rdi
	syscall
