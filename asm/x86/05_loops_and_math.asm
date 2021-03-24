global _start

section .data

counter db 0

newline db 0xA


section .bss

value resb 1


section .text

_start:


inc_loop:
	cmp byte [counter], 10
	je  exit

	mov eax, 4
	mov ebx, 1

	mov ecx, [counter]
	add ecx, 48
	mov [value], ecx
	mov ecx, value

	mov edx, 1
	int 0x80

	inc byte  [counter]
	jmp inc_loop

dec_loop:

arr_loop:

exit:
	mov eax, 4
	mov ebx, 1
	mov ecx, newline
	mov edx, 1
	int 0x80	

	mov eax, 1
	mov ebx, 0
	int 0x80
