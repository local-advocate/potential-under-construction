global _start

section .data

temp1 db 10
temp2 db "array: "
newline db 0xA

array dd 0, 1, 2, 3, 4, 5		; array of bytes
; array times 9 dd 0
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

	;---------printing an array----------
	mov esi, array					; esi = array[0] address
	mov edi, arraylen - 1				; edi = len of arr

	;--------nasm supported formats------
	temp10: db 10					; will always evaluate to smallest repr
	mov eax, [temp10]
	mov eax, [ds:temp10+ebx]
;	mov eax, [ebx*2+ecx+10]

	mov eax, 4					; print "array: "
	mov ebx, 1
	mov ecx, temp2
	mov edx, 7
	int 0x80

	; learned from https://www.daniweb.com/programming/software-development/threads/488646/how-to-print-array-in-nasm
	print_arr:	

		mov ecx, DWORD [esi]			; ecx = first element of array
		add ecx, 48				; to convert from int to ascii (cant print int)
		push ecx				; push ecx to get address of ascii (for print syscall)
		mov ecx, esp				; address of ascii

		mov eax, 0x04				; print int
		mov ebx, 1
		mov edx, 1			
		int 0x80

		pop ecx					; stack restoring (can be ignored if no overflow)

		add esi, 4				; next array elem (dd = 4 byte)
		sub edi, 1				; counter -= 1

		cmp edi, 0				; loop if not end
		jge print_arr
		jmp exit				; else jump to exit

	exit:
		mov eax, 4				; print newline and exit
		mov ebx, 1
		mov ecx, newline
		mov edx, 1
		int 0x80		

		mov eax, 1
		mov ebx, 0
		int 0x80
