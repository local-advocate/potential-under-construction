global _start

section .data

temp1 db 10
temp2 dw "duhh"

array db 0, 1, 2, 3, 4, 5		; array of bytes


section .text

_start:
	; ---------Register addressing--------
	mov  eax    , temp1
	; mov  temp2  , eax 

	; --------Immediate addressing--------
	; add temp1, 10
	mov eax  , 10

	; --------

	mov eax, 0x01
	mov ebx, 0
	int 0x80
; use gdb with ld/nasm for assembly files
