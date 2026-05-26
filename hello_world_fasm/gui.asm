include 'win32ax.inc' 

.code 
start:
	invoke MessageBox,HWND_DESKTOP, "Hello world!", "hello ", MB_OK 
	invoke ExitProcess,0
	
.end start