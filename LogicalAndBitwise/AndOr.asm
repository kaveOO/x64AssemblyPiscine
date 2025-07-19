global AndOr

section .text

AndOr:
	mov al, 0x1C	; 0001 1100
	mov bl, 0x14	; 0001 0100

	and al, bl		; 0001 0100 -> 20

	mov bl, 0xEB	; 1110 1011

	or al, bl		; 1111 1111

	ret
