; this is a comment ?
; make object file: nasm -f elf32 -o object_file.o source_file.asm
; load object file: ld -m elf_i386 -o executable.elf object_file.o


global _start

section .data
	message: db "Hello World", 0xA  ; newline 
	msg_lng equ $-message 		; $ = current address
 
section .text

_start:
	mov eax, 0x4			; syscall argument for write
	mov ebx, 1			; fd to write to (1: stdout)
	mov ecx, message		
	mov edx, msg_lng
	int 0x80			; interrupt (0x80 syscall)

	mov eax, 0x1			; quit
	mov ebx, 0
	int 0x80

; search: syscall reference
; nasm, ld: how to use
; x86 syntax
; make file
