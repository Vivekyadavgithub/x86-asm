; hello_world.asm
;
; 09-02-2021

global _start

section .text:

_start:
     mov eax, 0x4               ; use write syscall
     mov ecx, 1                 ; use stdout as fd
     mov ecx, message           ; use message as buffer
     mov edx, message_length    ; and supply length
     int 0x80	


     mov eax, 0x1
     mov ebx, 0
     int 0x80

section .data:
    message: db "Hello World!", 0xA
    message_length equ $-message
