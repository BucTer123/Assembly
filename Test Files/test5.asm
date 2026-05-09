read_loop:
	int 21h
	cmp al, 13
	je finish
	
	stosb
	dec ecx
	
	jmp read_loop
finish:
	mov al, '$'
	stosb 
cmd_exit:
	mov rax,60
	mov rdi,0
	syscall
mainloop:
	cmp al, 'c'
	je cmd_exit