#include "main.h"
#include "algo.h"
#include "sort.h"
int main()
{

  int buf[10]={1,7,5,9,4,3,0,8,6,2};
  int buflength,len;
  //BubbleSort(buf,9);
  buflength=sizeof(buf)/sizeof(buf[0]);
  printf("buflength=%d\n",buflength);
  len=buflength;
  while(len--)
  {
    printf("%d ",buf[buflength-len-1]);
  }
  printf("\n");

  // BubbleSort(buf,buflength);
  // QuickSort(buf,0,9);
  // InsertSort(buf,buflength);
  // ShellSort(buf,5,buflength);//error
  // SelectSort(buf,buflength);
  // heapsort(buf,buflength);
  // mergesort(buf,0,9);
  // merge(buf,0,1,9);
  countingsort(buf,buflength,10);
  while(buflength--)
  {
    printf("%d ",buf[9-buflength]);
  }
  printf("\n");
  return 0;
}
