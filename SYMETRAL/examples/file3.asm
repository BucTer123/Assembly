%include "out.asm"

section .text
global _main ; main function

_main:
  call _print_helloworld ; Start SYMETRAL

  call _input ; Create input (but edit text in out.asm)
  
  call _print_byeworld ; End SYMETRAL
  call _exit ; SHUTDOWN
