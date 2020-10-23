#!/bin/sh
a=0
c=1
while [ "$a" -lt 20 ]   
do
   b="$a"
   while [ "$b" -ge 0 ] 
   do
      echo -n "$c  "
      c=`expr $c + 1`
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done