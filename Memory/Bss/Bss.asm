section .bss
	bigSpace resb 100

section .text
	global _start

_start:
	lea rbx, [rel bigSpace]

	mov [rbx + 0x0], byte 0x48
	mov [rbx + 0x1], byte 0x65
	mov [rbx + 0x2], byte 0x6C
	mov [rbx + 0x3], byte 0x6C
	mov [rbx + 0x4], byte 0x6F
	mov [rbx + 0x5], byte 0xA

	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, rbx
	mov rdx, 0x6
	syscall

	mov [rbx + 0x50], byte 0x46	; Starting from bigSpace[80] for the words !
	mov [rbx + 0x51], byte 0x61
	mov [rbx + 0x52], byte 0x72
	mov [rbx + 0x53], byte 0x20
	mov [rbx + 0x54], byte 0x41
	mov [rbx + 0x55], byte 0x77
	mov [rbx + 0x56], byte 0x61
	mov [rbx + 0x57], byte 0x79
	mov [rbx + 0x58], byte 0xA

	mov rax, 0x1
	mov rdi, 0x1
	lea rsi, [rbx + 0x50]		; Starting from the same offset to write
	mov rdx, 0x9
	syscall

	mov rax, 0x3C
	xor rdi, rdi
	syscall
