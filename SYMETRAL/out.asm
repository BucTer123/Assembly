bits 64

;****** ******;
;*****   *****;
;****     ****;
;***       ***;
;**         **;
;*	         *;
;SYMETRAL(Basic Symetral FrameWork)

section .data
	msg1 db "Maintext"
	len1 equ $ - msg1
	msg2 db _print
	len2 equ $ - msg2
	msg3 db _input
	len3 equ $ - msg3
	msg4 db "Hello World!"
	len4 equ $ - msg4
	msg5 db "Bye World!"
	len5 equ $ - msg5
	msg_createvalue db _create_variable
	msglen_createvalue equ $ - msg_createvalue

section .text
	global _print_maintext
	global _print
	global _input
	global _exit
	global _print_helloworld
	global _print_byeworld
	global _create_variable

_print_maintext:
    	mov rax, 1 
    	mov rdi, 1    
    	mov rsi, msg1 
    	mov rdx, len1       
    	syscall
    	mov rax, 60        
    	xor rdi, rdi 
    	syscall 

_print:
    	mov rax, 1
	mov rdi, 1
	mov rsi, msg2
	mov rdx, len2
	syscall
	mov rax, 60
	xor rdi, rdi
	syscall

_input:
	sub rsp, 8
	mov rdi, 0
	mov rsi, [rsp-8]
	mov rdx, 1
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, msg3
	mov rdx, len3
	syscall
	mov rax, 60
	xor rdi, rdi
	syscall
_exit:
	mov eax, 1
	mov ebx, 0
	int 80h

_print_helloworld:
	mov rax, 1
	mov rdi, 1 
	mov rsi, msg4
	mov rdx, len4
	syscall
	mov rax, 60
	xor rdi, rdi
	syscall

_print_byeworld:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg5
	mov rdx, len5
	syscall
	mov rax, 60
	xor rdi, rdi
	syscall

_create_variable:
	mov iter, 0
	cmp iter, 10
	jge LoopEnd

	mov eax, 4
	mov ebx, 1
	mov ecx, msg_createvalue
	mov edx, msglen_createvalue
	int 80h

	inc iter

LoopEnd:
	mov eax, 1
	mov ebx, 0
	int 80h
