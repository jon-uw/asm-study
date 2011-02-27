# sizetest1.s - A simple program to view the executable size
.section .bss
  .lcomm buffer, 10000

.section .text
.globl _start
_start:
  mov $1, %eax
  mov $0, %ebx
  int $0x80
