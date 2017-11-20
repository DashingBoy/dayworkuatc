#include <stdio.h>
void Output();
void output();
int main(void)
{
  char *a="01234567899876543210";
//  char *a;
//  char *b;
  int len;
//  b=a;
  scanf("%d",&len);
//  while(len--)
//  {
//   *a++=getchar();
//  printf("len=%d\n",len);
//  }
//  *a='\0';
//  printf("%d\n",len);
 // a=getchar();
 // b=getchar();
 // len=b-'0';
 // Output(len,&a);
//  Output(len+1,b);
   printf("%s\n",a);
   output(len,a);
}

void Output(int len,const char *src)
{
  while(len--)
  {
    printf("%c",*src++);
    if(*src == '\0')
    {
      printf("\n");
      break;
    }
  }
}

void output(int len,const char *src)
{
   while(*src != '\0' && len-- != 0 )   
   printf("%c",*src++);
}

