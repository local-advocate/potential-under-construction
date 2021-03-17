global _start

; static/global
section .data

; one byte

bone db "a", 1001b, "b", 0Ah	; db = declare byte (referred by variable bone and value is "a")
len1 equ 4                      ; length (in bytes)

btwo db  90, 0xA, 0xA
len2 equ 3

; btre .byte 			; error instruction expected if left empty 
; btre: .byte			; illgal cant use labels

bfr db "ha",  0xA
len4 equ 3
 	
section .text

_start:
	nop
	
	jmp print_bone
	; jmp print_btwo
	; jmp print_bfr
	
	print_bone:
		mov eax, 0x04		; print byte (doesnt work without message length)
		mov ebx, 1
		mov ecx, bone
		mov edx, len1
		int 0x80	
		jmp exit
		
	print_btwo:
		mov eax, 0x04		; print byte (doesnt work without message length)
		mov ebx, 1
		mov ecx, bfr
		mov edx, len2
		int 0x80	
		jmp exit		

	print_bfr:
		mov eax, 0x04		; print byte (doesnt work without message length)
		mov ebx, 1
		mov ecx, bfr
		mov edx, len4
		int 0x80	


	exit:			
		mov eax, 1		; quit
		mov ebx, 0
		int 80h
