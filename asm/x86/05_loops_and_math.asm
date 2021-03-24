global _start

section .data

counter db 0

newline db 0xA


section .bss

value resb 1


section .text

_start:

inc_loop:						; prints from 0 to 9 (including 9)
	cmp byte [counter], 10				; if counter == 10, 
	je  inc_loop_end				; exit the loop

	mov eax, 4					; else print counter
	mov ebx, 1

	mov ecx, [counter]				; convert from decimal to ascii
	add ecx, 48
	mov [value], ecx				; save ascii in value for ecx pointer
	mov ecx, value

	mov edx, 1
	int 0x80					; print ascii value of counter decimal

	inc byte  [counter]				; counter++
	jmp inc_loop					; loop again

inc_loop_end:						; handles loop exit
	dec byte [counter]				; decrement counter (last counter val = 10)
	mov eax, 4					; print newline
	mov ebx, 1
	mov ecx, newline
	mov edx, 1
	int 0x80	


dec_loop:						; same as inc_loop but print from 9 to 0
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
;	mov eax, 4
;	mov ebx, 1
;	mov ecx, newline
;	mov edx, 1
;	int 0x80	

	mov eax, 1
	mov ebx, 0
	int 0x80
