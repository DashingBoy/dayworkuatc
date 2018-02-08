#include "main.h"
#include "algo.h"
#include "sort.h"
void BubbleSort(int *a,int len)
{
  for(int x=0;x<len;x++)
  {
    int flag=0;
    for(int y=len-1;y>x;y--)
    {
      if(a[y]<a[y-1])
        {
          Swap(&a[y],&a[y-1]);
          flag=1;
        }
    }
    if(!flag)
        break;
  }
}
void QuickSort(int *a,int start,int end)
{
  if(start<=end)
  {
    int split=partition(a,start,end);
    QuickSort(a,start,split-1);
    QuickSort(a,split+1,end);
  }
}
void InsertSort(int *a,int len)
{
  int x,y;
  for(x=0;x<len;x++)
  {
    for(y=x+1;y>=1;y--)
    {
      if(a[y] < a[y-1])
      {
        Swap(&a[y],&a[y-1]);
      }
    }
  }
}
void ShellSort(int *a,int d,int length)
{
  while(d>=1)
  {
    shell(a,d,length);
    d=d/2;
    printf("d=%d\n ",d);
  }
}

void SelectSort(int *a,int len)
{
  int i,j,min,mark;
  for(i=0;i<len;i++)
  {
    min=a[i];
    for(j=i+1;j<len;j++)
    {
      if(a[j]<min)
      {
        min=a[j];
        mark=j;
      }
    }
    if(min!=a[i])
    {
      Swap(&a[i],&a[mark]);
    }
  }
}

void heapsort(int *a,int len)
{
  int clen;
  buildheap(a,len);
  for(clen=len-1;clen>0;clen--)
  {
    Swap(&a[0],&a[clen]);
    shift(a,0,clen);
  }
}

void mergesort(int *a,int start,int end)
{
  if(start < end)
  {
    int mid=(start+end)/2;
    printf("mid=%d start=%d end=%d\n",mid,start,end);
    mergesort(a,start,mid);
    mergesort(a,mid+1,end);
    merge(a,start,mid,end);
  }
}

void countingsort(int *a,int len,int k)
{
  int i,idx=0;
  int *B=calloc(k,sizeof(int));
 // int *B=malloc(k*sizeof(int));
  for(i=0;i<len;i++)
  {
    B[a[i]]++;
  }
  for(i=0;i<k;i++)
  {
    while(B[i]-- > 0)
    {
      a[idx++]=i;
    }
  }
  free(B);
}

