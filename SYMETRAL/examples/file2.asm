%include "out.asm" ;Get code from out.asm

section .text
global _main ;Create manin function

_main:
  call _print_helloworld ; start SYMETRAL

  call _print ; create label (but text you can edit in out.asm file)
  
  call _print_endworld ;end SYMETRAL
  call _exit ; SHUTDOWN
