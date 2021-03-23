global _start

section .data

temp1 db 10
temp2 db "array: "
newline db 0xA

array dd 0, 1, 2, 3, 4, 5		; array of bytes
arraylen equ ($ - array)/4		; dd = 4 bytes

section .bss

temp3 resb  10


section .text

_start:
	; ---------Register addressing--------
	mov  eax    , [temp1]
	; mov  temp2  , eax 				Invalid

	; --------Immediate addressing--------
	; add temp1, 10					Invalid
	mov eax  , 10

	; --------Direct-Offset addressing----
	mov eax, [array+1*4]				; eax should be 2
	mov eax, array + 8				; eax = ptr to 2nd element

	mov esi, array
	mov edi, arraylen - 1

	mov eax, 4
	mov ebx, 1
	mov ecx, temp2
	mov edx, 7
	int 0x80

	print_arr:
		mov eax, 0x04
		mov ebx, 1
		mov ecx, [esi]
		add ecx, 48
		push ecx
		mov ecx, esp
		mov edx, 1
		int 0x80
		pop ecx

		add esi, 4
		sub edi, 1

		cmp edi, 0
		jge print_arr
		jmp exit

	exit:
		mov eax, 4
		mov ebx, 1
		mov ecx, newline
		mov edx, 1
		int 0x80		

		mov eax, 1
		mov ebx, 0
		int 0x80
