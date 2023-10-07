global _start

section .text
_start:
	; Write data on stack
	sub esp, 8 ; Create 8 byte space on the stack (as stack jumps on multiples
							; of four by default in 32-bit Assembly)
	mov [esp], byte 'S'
	mov [esp+1], byte 'e'
	mov [esp+2], byte 'l'
	mov [esp+3], byte 'e'
	mov [esp+4], byte 'n'
	mov [esp+5], byte 'a'

	; Write to screen
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 6
	int 0x80

	; Exit the program
	mov eax, 1
	mov ebx, 0
	int 0x80

