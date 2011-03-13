#include <stdio.h>

int main(void)
{
  __asm__(
    "mov $0x20, %eax\n\t"
    "mov $0x1f, %ebx\n\t"
  );
  return 0;
}
