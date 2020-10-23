#!/bin/sh

a=0
while [ $a -lt 10 ]
do
a=`expr $a + 1`
echo $a
continue
done
