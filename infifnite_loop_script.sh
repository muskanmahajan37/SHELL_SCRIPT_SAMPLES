x=1
while [ "$x" -lt 101 ]
do 
x = `expr $x + 1`
echo $x
done