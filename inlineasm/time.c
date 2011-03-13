#include <stdio.h>

int main(void)
{
  int x = 5;
  asm (
    " leal (%1, %1, 4), %0"
    : "=r" (x)
    : "r" (x)
  );
  printf("x times 5 is %d\n", x);
  
  return 0;
}
