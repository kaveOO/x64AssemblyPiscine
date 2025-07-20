global Shift

section .text

Shift:
	jmp left

left:
	mov al,	0x8			; 0000 1000 | 8
	shl al, 1			; 0001 0000 Shifted one time on left

	cmp al, 0x10		; 16
	je right

	ret

right:
	shr al, 0x2			; 0000 0100 Shifted two times on right

	cmp al, 0x4			; 4
	je rightArithmetic

	ret

rightArithmetic:
	mov al, 0x9C 		; 1001 1100 | -100
	sar al, 1			; 1100 1110 Shifted one time on right

	cmp al, 0xCE 		; -50 | 206
	je leftArithmetic

	ret

leftArithmetic:
	mov al, 0x38 		; 0011 1000 | -200
	sal al, 1 			; 0111 0000 Shifted one time on left

	cmp al, 0x70		; 112
	je exit

	ret

exit:
	mov rax, 0x2A		; If return value is 42, program has succesfully shifted all bits !

	ret
