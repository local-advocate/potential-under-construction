global _start

section .data

%assign a 10						; %assign: assign numeric constants, can be redefined
%define b 20						; %define: same as c define directive

sum equ a+b						; make constant = expression after equ
len equ $ -sum

sumt db  "Sum  :", 0x09
suml equ $ - sumt


section .bss
bsssum resb 4

section .text

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, sumt
	mov edx, suml
	int 0x80
	
	mov eax, sum
	mov [bsssum], eax

	mov eax, 4					; wont print (convert sum to ascii)
	mov ebx, 1
	mov ecx, bsssum
	mov edx, 4 
	int 0x80

	; exit
	mov eax, 1
	mov ebx, 0
	int 0x80
	
