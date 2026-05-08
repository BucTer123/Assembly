section .data:
	hello: db "Welcome!", 10 ;Welcome!
	hellolen: equ $-hello 
	text1: db "-----------------",11;
	text1len: equ $-text1 
	text2: db "| 				|", 12;
	text2len: equ $-text2 
	text3: db "---------------", 13;
	text3len: equ $-text3;
	

section .text:
	global _start ;creating start
	
	_start:
		mov rax,1
		mov rdi,1
		mov rsi,hello
		mov rdx,hellolen
		mov rsi,text1 
		mov rdx,text1len
		mov rsi,text2
		mov rdx,text2len
		mov rsi,text3
		mov rdx,text3len
		syscall
		
		mov rax,60
		mov rdi,0
		syscall