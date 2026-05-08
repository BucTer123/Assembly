section .data:
	msg db "Welcome!",10
	msg db "This is assembly test second file ",11
	msg db "This language is so hard !",12
	msg db "BLYATTT!",13
	len equ $ - msg

section .text:
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rdi, msg 
	mov rdx, len 
	syscall
	mov rax, 60
	xor rdi, rdi 
	syscall