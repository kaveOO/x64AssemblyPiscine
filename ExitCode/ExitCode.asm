section .text
	global _start

_start:
	mov rax, 0x3C	;	0011 1100 	-> 60 sys_exit
	mov rdi, 0x2A	;	0010 1010	-> 42 :)
	syscall
