global NotXor

section .text

NotXor:
	mov al, 0xD5	; 1101 0101

	not al			; 0010 1010

	mov bl, 0x0 	; 0000 0000

	xor al, bl		; 0010 1010

	ret
