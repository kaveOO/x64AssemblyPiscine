global Types

section .data
	aByte	db 1
	aWord	dw 700
	aDword	dd 80000
	aQword	dq 9_000_000_000

section .text

Types:
	xor rax, rax
	mov al, [rel aByte]

	xor rdx, rdx
	mov dx, [rel aWord]
	add rax, rdx

	xor rcx, rcx
	mov ecx, [rel aDword]
	add rax, rcx

	mov rdx, [rel aQword]
	add rax, rdx
	
	ret
