global DecFunction

section .text

DecFunction:
	xor eax, eax
	inc eax
	inc eax
	inc eax
	inc eax

	dec eax
	dec eax

	ret
