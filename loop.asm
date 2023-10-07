global _start

section text
_start:
	mov ebx, 1
	mov ecx, 4

loop:
	add ebx, ebx
	dec ecx
	cmp ecx, 0
	jg loop ; Jump to label `loop` if valueAt(ecx) > 0

	; exit
	mov eax, 1
	int 0x80

