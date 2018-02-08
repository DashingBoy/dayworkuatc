#! /bin/bash
if [ $# -ne 2 ]
then
  echo "Usage-$0 x y"
  echo "where x and y are two nos for which i will print sum"
#  exit 1
else
  echo "sum of $1 and $2 is `expr $1 + $2`"
# * -> \*
fi

