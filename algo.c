#include "main.h"
#include "algo.h"
void Swap(int *a,int *b)
{
  int c;
  c=*a;
  *a=*b;
  *b=c;
}

int partition(int *a,int start,int end)
{
  int roll=a[start];
  int i,j;
  for(i=start+1,j=i;i<=end;i++)
  {
    if(a[i]<roll)
    {
      Swap(&a[i],&a[j]);
      j++;
    }
  }
  Swap(&a[start],&a[j-1]);
  return j-1;
}

void shell(int *a,int d,int len)
{
  int x,y;
  for(x=d;x<len;x++)
  {
    for(y=x;y>=d;y-=d)
    {
      if(a[y]<a[y-d])
      {
        Swap(&a[y],&a[y-d]);
      }
    }
  }
}

void shift(int *a,int i,int len)
{
  int l,r,largest;
  l=2*i+1;
  r=l+1;
  if(l < len && a[l] > a[i])
  {
    largest=l;
  }else
  {
    largest=i;
  }
  if(r < len && a[r] > a[largest])
  {
    largest=r;
  }
  if(largest !=i)
  {
    Swap(&a[i],&a[largest]);
    shift(a,largest,len);
  }
  
}

void buildheap(int *a,int len)
{
  int i;
  for(i=len/2-1;i>=0;i--)
  {
    shift(a,i,len);
  }
}

void merge(int *a,int start,int mid,int end)
{
  int len=10;
  if(start >mid || mid >end) 
  {return; }
  int i=start,j=mid+1,k=0;
  int *L=(int *)malloc((end -start+1)*sizeof(int));
  while(i <= mid && j <= end)
  {
    if(a[i] < a[j])
    {
      L[k++]=a[i++];
    }else
    {
      L[k++]=a[j++];
    }
  }
  while(i <= mid)
  {
    L[k++]=a[i++];
  }
  while(j <= end)
  {
    L[k++]=a[j++];
  }
  for(i=start,j=0;i <= end;i++,j++)
  {
    a[i]=L[j];
  }
  free(L);
  while(len--)
  {
    printf("%d ",a[9-len]);
  }
  printf("\n");

}
