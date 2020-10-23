 #!/bin/sh


a=0
echo "enter the number of rows to print: "
read n
m=`expr $n + 1`
while [ $a -lt $m ]
do
	b=$a
	while [ $b -gt 0 ]
		do
			echo -n "$b "
			b=`expr $b - 1`
		done
	echo 
	a=`expr $a + 1`
done
