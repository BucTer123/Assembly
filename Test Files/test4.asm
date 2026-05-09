read_loop:
    int 21h        
	cmp al, 13
    je finish

    stosb
    dec ecx
    jz finish

    jmp read_loop

finish:
    mov al, '$'
    stosb