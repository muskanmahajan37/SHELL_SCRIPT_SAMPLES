echo enter the range of increment :
read y
echo enter the value by whch increament should take place:
read z
echo ---------------------------------------------------------
x=1
while [ "$x" -lt $y ]
do
echo $x
x=`expr $x + $z`
echo $x
done
test a