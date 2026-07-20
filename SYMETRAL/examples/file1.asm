%include "out.asm"

.section text
global _main

_main:
    call _print_hellworld ;Start SYMETRIAL
    
    call _print ; Write Label (but edit it in out.asm)
    call _create_variable ; Create 'variable' 

    call _print_byeworld ;Stop SYMETRIAL
    call _exit ; SHUTDOWN
