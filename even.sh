#!/bin/sh

num="1 2 3 4 5 6 7"
for numm in $num
do
	even=`expr $numm % 2`
	if [ $even -eq 0 ]
	then
		echo "$numm is even"
	fi
	echo "$numm is odd"
done
