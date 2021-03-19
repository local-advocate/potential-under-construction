global _start


;---------------data-------------------------

section .data 					; user for constant data 

prompt db   "Enter you name: "			; db = declare byte
len1   equ  $ - prompt                    	; length (in bytes)

respon db   "Your name is "
rpnln  equ  $ - respon

newline db 0xA


;---------------bss-------------------------

section .bss  					; user for variables/uninitialized data

input  resb 100					; reserve 100 bytes 


;----------------text----------------------
 	
section .text

_start:

	print_prompt:
		mov eax, 0x04		
		mov ebx, 1
		mov ecx, prompt
		mov edx, len1
		int 0x80	

	read_input:
		mov eax, 3			; syscall number for read
		mov ebx, 2			; read from stdin
		mov ecx, input			; buf to store at
		mov edx, 100			; size of input
		int 0x80

	print_response:
		mov eax, 0x04	
		mov ebx, 1
		mov ecx, respon
		mov edx, rpnln
		int 0x80

	print_input:
		mov eax, 0x04
		mov ebx, 1
		mov ecx, input
		mov edx, 100
		int 0x80
	
	print_newline:
		mov eax, 0x04
		mov ebx, 1
		mov ecx, newline
		mov edx, 1
		int 0x80	

	; print_something:			; add later macro/call to library func
	;	mov eax, 0x04
	;	mov ebx, 1
	;	int 0x80
		

	exit:			
		mov eax, 1			; quit
		mov ebx, 0
		int 80h
