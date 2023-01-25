; Author: mrtuxa

global _start

section .text:

_start:
  mov eax, 0x4  ; use the write syscall
  mov ebx, 1  ; use stdout as the fd
  mov ecx, message  ; use the message as buffer
  mov edx, message_length ; and supply the message_length
  int 0x80  ; invoke syscall

  ; now gracefully exit

  mov eax, 0x1
  mov ebx, 0
  int 0x80

section .data:
  message: db "Hello World", 0xA
  message_length equ $-message
