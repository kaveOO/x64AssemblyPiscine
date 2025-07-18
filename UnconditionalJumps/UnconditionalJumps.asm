section .data
	jumped		db "If this text appear, my program is fucked", 0xA
	jumpedLen	equ $ - jumped

	start 		db "We are on _start part, moving to _first one", 0xA
	startLen 	equ $ - start

	first 		db "We are on _first part, moving to _second one", 0xA
	firstLen 	equ $ - first

	second		db "We are on _second part, moving to _third one", 0xA
	secondLen	equ $ - second

	third		db "We are on _third part, moving to _fourth one", 0xA
	thirdLen	equ $ - third

	fourth		db "We are on _fourth one, moving to _exit ", 0xA
	fourthLen 	equ $ - fourth

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, start
	mov rdx, startLen
	syscall

	jmp _first			; Everything after jump should not appear

	mov rax, 1
	mov rdi, 1
	mov rsi, jumped
	mov rdx, jumpedLen
	syscall

_first:
	mov rax, 1
	mov rdi, 1
	mov rsi, first
	mov rdx, firstLen
	syscall

	jmp _second

_second:
	mov rax, 1
	mov rdi, 1
	mov rsi, second
	mov rdx, secondLen
	syscall

	jmp _third

_third:
	mov rax, 1
	mov rdi, 1
	mov rsi, third
	mov rdx, thirdLen
	syscall

	jmp _fourth

_fourth:
	mov rax, 1
	mov rdi, 1
	mov rsi, fourth
	mov rdx, fourthLen
	syscall

	jmp _exit

_exit:
	mov rax, 0x3C
	xor rsi, rsi
	syscall


; 0011 1100 -> 0x3C




