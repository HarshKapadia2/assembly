global _start

section .text
_start:
	call func
	mov eax, 1
	int 0x80

func:
	; Prologue (preserving the Stack Pointer in the Base Pointer register &
	; optionally allocating space in the stack)
	; This is done to preserve the `ebp` value in nested funciton calls
	push ebp
	mov ebp, esp
	; If required: sub esp, 2

	; Start normal function operations
	mov ebx, 42

	; Epilogue (undoing changes to ensure correct return)
	mov esp, ebp
	pop ebp
	; pop eax ; popping from the stack
	; jmp eax
	ret ; Combination of the last two instructions

