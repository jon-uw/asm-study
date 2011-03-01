# jumptest.s - And example of the JUMP instruction

.section .text
.globl _start
_start:
  nop 
  movl $1, %eax
  jmp overhere
  movl $10, %ebx
  int $0x80
overhere:
  mov $20, %ebx
  int $0x80
