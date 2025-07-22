global RetWords

section .data
	aBytes	dw 0x0F, 0x0E, 0x0D, 0x0C

section .text


RetWords:
	lea rbx, [rel aBytes]

	xor rdi, rdi					; rdi = 0
	xor rax, rax

	mov ax, [rbx + rdi * 2]
	; ax = 0000 0000 0000 1111

	shl rax, 16
	; rax = 00000000 00000000 00000000 00000000 00000000 00001111 00000000 00000000

	inc rdi							; rdi = 1

	mov ax, [rbx + rdi * 2]
	; ax = 0000 0000 0000 000E

	shl rax, 16
	; rax = 00000000 00000000 00000000 00001111 00000000 00001110 00000000 00000000

	inc rdi							; rdi = 2

	mov ax, [rbx + rdi * 2]
	; ax = 0000 0000 0000 1101

	shl rax, 16
	; rax = 00000000 00001111 00000000 00001110 00000000 00001101 00000000 00001100

	inc rdi							; rdi = 3

	mov ax, [rbx + rdi * 2]
	; ax = 0000 0000 0000 1100

	shl rax, 16
	; rax = 11110000 00000000 00001110 00000000 00001101 00000000 00000000 00000000

	; 17294068863197036544
	; 3940705509310464

	ret
