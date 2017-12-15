#echo "" | awk -f add.awk
function add(x,y,   sum) #sum -> local
{
  sum=x+y
  return sum
}
function Add(x,y)
{
  sum=x+y  #sum -> global
  return sum
}

{
  m=2
  n=3
  x=add(m,n)
  printf("%d \n",sum)
  printf("%d \n",x)
}
