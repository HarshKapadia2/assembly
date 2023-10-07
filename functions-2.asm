global _start

section .text
_start:
	push 21
	call get_double

	; Exit
	mov ebx, eax
	mov eax, 1
	int 0x80

get_double:
	; Prologue
	push ebp
	mov ebp, esp

	; Start normal function operations
	mov eax, [ebp+8] ; Accessing an 'argument'
	add eax, eax

	; Epilogue
	mov esp, ebp
	pop ebp
	ret

