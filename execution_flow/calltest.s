# calltest.s - An example of using CALL instruction

.section .data
output:
  .asciz "this is section %d\n"

.section .text
.globl _start
_start:
  pushl $1
  pushl $output
  call printf
  addl $8, %esp # clear stack: why?

  call overhere

  pushl $3
  pushl $output
  call printf
  addl $8, %esp
  
  push $0
  call exit

overhere:
  pushl %ebp
  movl %esp, %ebp
  push $2
  push $output
  call printf
  add $8, %esp
  movl %ebp, %esp
  popl %ebp
  ret




