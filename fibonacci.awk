# awk -f fibonacci.awk fibonacci.txt 


#function fibonacci(nth)
#{
#  if(nth == 1 || nth == 2)
#    return 1
#  else
#    return fibonacci(nth-1)+fibonacci(nth-2)
#}
#{
#  n = $1
#  printf("%dth of fibonacci sequence is: %d\n",n,fibonacci(n))
#}

function fibonacci(array,n,   ind)
{
  ind=3
  while(ind <= n)
  {  
    array[ind] = array[ind-1] + array[ind-2]
    ind++
  }
}
{
  array[1]=1
  array[2]=1
  n=$1
  fibonacci(array,n)
  printf(" %dth of fibonacci sequence is: %d\n",n,array[n])
}
