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
	je  inc_loop_end

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

inc_loop_end:
	dec byte [counter]

	mov eax, 4
	mov ebx, 1
	mov ecx, newline
	mov edx, 1
	int 0x80	


dec_loop:
	cmp byte [counter], -1
	je  dec_loop_end

	mov eax, 4
	mov ebx, 1

	mov ecx,  [counter]
	add ecx, 48
	mov  [value], ecx
	mov ecx, value

	mov edx, 1
	int 0x80

	dec byte [counter]
	jmp dec_loop

dec_loop_end:
	mov eax, 4
	mov ebx, 1
	mov ecx, newline
	mov edx, 1
	int 0x80	


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
