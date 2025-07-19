global Overflow

section .data
	text	db "Overflow happened, exiting...", 0xA
	textLen equ $ - text

section .text

Overflow:
	jmp overflow_8

overflow_8:
	add rax, 0x0					; Clear overflow flag OF

	mov al, 0x7F					; 0111 1111
	inc al

	jo overflowed_16

	mov rax, 0x8					; 1000
	ret

overflowed_16:
	add rax, 0x0

	mov ax, 0x7FFF					; 0111 1111 1111 1111
	inc ax

	jo overflowed_32

	mov rax, 0x10					; 0001 0000
	ret

overflowed_32:
	add rax, 0x0

	mov eax, 0x7FFFFFFF				; 0111 1111 1111 1111 1111 1111 1111 1111
	inc eax

	jo overflowed_64

	mov rax, 0x20					; 0010 0000
	ret

overflowed_64:
	add rax, 0x0

	mov rax, 0x7FFFFFFFFFFFFFFF		; 0111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111
	inc rax

	jo exit

	mov rax, 0x40					; 0100 0000
	ret

exit:
	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, text
	mov rdx, textLen
	syscall

	mov rax, 0x539					; 0010 0001 1011
	ret
