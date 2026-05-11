section .data:
	text1: db "Welcome!",10
	text1_len: equ	$-text1
	input1: db "> ",10
	inpu1_len: equ $-input1
	
section .text:
	global _start
	
	_start:
		mov rax,1
		mov rdi,1
		mov rsi,text1
		mov rdi,text1_len
		mov rsi,inpu1 
		mov rdi,inpu1_len
		je cmd_input
		syscall
	
	cmd_input:
		int 21h
		cmp al, 13
		syscall
		dec ecx
		je mainloop
		jmp cmd_input
	mainloop:
		cmd_input 'c':
		je cmd_exit
	
	cmd_exit:
		mov rax,60
		mov rdi,0
		syscall
	
