global _start

section .text
_start:
	; Modify `addr`
	mov [addr], byte 'S'
	mov [addr+addr_len-2], byte '!'

	; Make `write` syscall
	mov eax, 4
	mov ebx, 1
	mov ecx, addr
	mov edx, addr_len
	int 0x80

	; Exit
	mov eax, 1
	mov ebx, 0
	int 0x80

section .data
	addr db "selena Gomez!", 0x0a
	addr_len equ $ - addr
