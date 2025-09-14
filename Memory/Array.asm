global PrintArray

section .text

PrintArray:
	; rdi is char *
	mov rsi, rdi 		; Loading the pointer to char in rsi (const char *buf) in Write syscall

.loop:
	mov al, byte [rsi]
	test al, al			; '\0' ?
	jz .end

	mov rax, 1
	mov rdi, 1
	mov rdx, 1
	syscall

	inc rsi
	jmp .loop

.end:
	ret
