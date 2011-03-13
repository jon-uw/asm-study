#include <stdio.h>

int main(void)
{
  int a = 10, b;
  asm (
    "movl %1, %%eax\n\t" // notice the '%%'
    "movl %%eax, %0\n\t"
    : "=r"(b)
    : "r"(a)
    : "%eax"
  );
  printf("b is %d\n", b);
  return 0;
}
