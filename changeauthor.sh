#!/bin/bash
i=1
while [ $i -le 10 ]
do
if [ -d ~/testc/shell ]
then
 mkdir -p ~/testc/shell/test/user$i
 chmod 754 ~/testc/shell/test/user$i
 echo "user$i"
 let "i=i+1"
else
mkdir ~/testc/shell/test
mkdir -p ~/testc/shell/test/user$i
chmod 754 ~/testc/shell/test/user$i
echo "user$i"
let "i=i+1"
fi
done
