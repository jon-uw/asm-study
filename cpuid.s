# cpuid.s Sample program to extract the processor Verdor ID
.section .data
output:
  .ascii "The processor Verdor Id is 'xxxxxxxxxxxx'\n"

.section .text
.globl _start
_start:
  nop # for gdb debug
  movl $0, %eax
  cpuid
  movl $output, %edi
  movl %ebx, 28(%edi)
  movl %edx, 32(%edi)
  movl %ecx, 36(%edi)

  # print the string
  movl $4, %eax
  movl $1, %ebx
  movl $output, %ecx
  movl $42, %edx
  int $0x80

  # terminate thte program
  movl $1, %eax
  movl $0x1, %ebx
  int $0x80
