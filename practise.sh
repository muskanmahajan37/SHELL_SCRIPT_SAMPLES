#!/bin/sh

a=0
while [ $a -lt 10000000000 ]
do
	echo $a
	a=`expr $a + 1000`
done
