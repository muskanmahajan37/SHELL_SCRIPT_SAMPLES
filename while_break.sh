#!/bin/sh

a=0

while [ $a -lt 100 ]
do
   echo $a
   if [ $a -eq 50 ]
   then
   echo $a
   break
   fi
   a=`expr $a + 1`
   echo $a
done