#! /bin/sh
while [ -e $1];
do 
  cat $1
  shift
done
