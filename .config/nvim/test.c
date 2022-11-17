#include <stdio.h>


int main (int argc, char *argv[])
{
  int x = 4;
  int *pX = &x;
  int size = sizeof(x);

  printf("Address of x: %p \n", pX);
  printf("size of x: %d bytes \n", size);

  return 0;
}
