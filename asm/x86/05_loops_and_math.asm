global _start

section .data

counter db 0


section .bss


section .text

_start:

inc_loop:

dec_loop:

arr_loop:

exit:
	mov eax, 1
	mov ebx, 0
	int 0x80
