global _start

section .data

temp1 db 10
temp2 dw "duhh"

array dd 0, 1, 2, 3, 4, 5		; array of bytes


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

	mov eax, 0x01
	mov ebx, 0
	int 0x80
