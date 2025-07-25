section .bss
	GlobalVariable resd 1 				; Unitialized global variable

section .text
	global _start

_start:
	mov [rel GlobalVariable], dword 0xA

	mov eax, [rel GlobalVariable]

	mov edi, 0x5
	add edi, eax

	mov [rel GlobalVariable], dword 0xB

	mov eax, [rel GlobalVariable]

	add edi, eax

	mov rax, 0x3C
	syscall
