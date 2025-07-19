section .data
	equal 		db "rax is equal to 0x2A", 0xA
	equalLen	equ $ - equal

section .text
	global _start

_start:
	mov rax, 0x2A
	cmp rax, 0x2A

	je _equal
	jmp _exit

_equal:
	mov rax, 1
	mov rdi, 1
	mov rsi, equal
	mov rdx, equalLen
	syscall

	jmp _exit

_exit:
	mov rax, 0x3C
	xor rsi, rsi
	syscall

; 	0010 1010 -> 0x2A -> 42
