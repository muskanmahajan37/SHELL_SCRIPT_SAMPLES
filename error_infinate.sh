#!/bin/sh
a=0
while [ "$a" -lt  10 ]
do
	b="$a"
  while [ "$b" -ge 10 ]
   do
   b=`expr $b + 1`
   echo -n "$b"
   done
  a=`expr $a + 1`
done 
echo programme execution completed








