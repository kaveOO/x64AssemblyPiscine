; This Function is used to view difference between
; Jump less for signed values
; Jump below for unsigned values

global AboveBelow

section .text

AboveBelow:
	mov al, 0xFF				; 1111 1111
 	mov bl, 0xA					; 0000 1010
	cmp al, bl

	jl less

	mov rax, 0x1
	ret

less:
	cmp al, bl
	jb below					; Jump for unsigned below, is 255 < 10 ?

	cmp al, bl
	ja above					; Jump for unsigned above, is 255 > 10 ?

	mov rax, 0x2
	ret

below:
	mov rax, 0x3
	ret

above:
	mov rax, 0x4
	ret
