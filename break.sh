#!/bin/sh

a=0
while [ $a -lt 10 ]
do
	if [ $a -eq 5 ]
	then
		break
	fi
	echo $a
	a=`expr $a + 1`
done
