; ref: https://www.nasm.us/doc/nasmdoc3.html

global _start


;---------------data-------------------------

section .data 					; user for constant data 

prompt db   "Enter you name: "			; db = declare byte, dw = word (2byte), DWORD = 4 bytes
len1   equ  $ - prompt                    	; length (in bytes)

respon db   "Your name is "
rpnln  equ  $ - respon

newline db 0xA

; var-name  define-directive   value
  abyte:		db		'a'		; declare 1 byte
  aword:		dw		'ab'		; declare 1 word (2 bytes)
  adobw:		dd		2000123		; declare 1 doubleword (4 bytes)
  aquad:		dq		111.99		; declare 1 quadword (8 bytes)
  atenb:		dt		8391123.111	; declare 1 tenbyte  (10 bytes)

intarr:       TIMES 10 dd 0				; array of 10 integers initialized to zero
intarrstr:    db "int arr: "
intarrstrlen: equ $ - intarrstr

;---------------bss-------------------------

section .bss  					; user for variables/uninitialized data

input:  resb 100					; reserve 100 bytes 

byter:  resb 1					; reserve 1 byte         type: BYTE  (db)
bytew:  resw 1					; reserve 1 word         type: WORD  (dw)
byted:  resd 1					; reserve 1 doubleword   type: DWORD (dd)
byteq:  resq 1					; reserve 1 quadword     type: QWORD (dq)
bytet:  rest 1					; reserve 1 tenbyte      type: TWORD (dt)

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
	

	; print_something:			; add later macro/call to library func
	;	mov eax, 0x04
	;	mov ebx, 1
	;	int 0x80
		
		
	print_newline:
		mov eax, 0x04
		mov ebx, 1
		mov ecx, newline
		mov edx, 1
		int 0x80	
		

	exit:			
		mov eax, 1			; quit
		mov ebx, 0
		int 80h
