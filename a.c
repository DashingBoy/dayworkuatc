#include <stdio.h>
int main(void)
{
  int a=3;
  printf("a1=%d %d\n",a,(int)&a);
//  printf("%d\n",(unsigned int)&a);
  for(int b=0;b<2;b++)
  {
//    int a=2;
    printf("a2=%d %d\n",a--,(int)&a);
//    printf("%d\n",(unsigned int)&a);
  }
  printf("a3=%d %d\n",a,(int)&a);
//  printf("%d\n",(unsigned int)&a);
  return 0;
}
