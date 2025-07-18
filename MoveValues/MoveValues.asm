section .data
	text db "Successfully moved exit code into differents register and exited !", 0xA
	textLen equ $ - text

section .text
	global _start

_start:
	mov rax, 10
	mov rbx, rax
	mov rcx, rbx
	mov rdx, rcx
	mov rsi, rdx
	mov rsp, rsi
	mov rbp, rsp
	mov rdi, rbp
	mov rbx, rdi		; Stock the rdi into rbx to retrieve it before exit

	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, textLen
	syscall

	mov rdi, rbx
	mov rax, 0x3C		; 0011 1100 -> 60 sys_exit
	syscall

