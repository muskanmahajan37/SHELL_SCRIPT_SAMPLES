#!/bin/bash
echo "##############################"
echo "enter first number: "
echo "##############################"
read a
echo "##############################"
echo "enter second number "
echo "##############################"
read b
echo "##############################"

echo "performing the addition:"
echo "------------------------------"
echo `expr $a + $b`
echo "performing subtraction:"
echo "------------------------------"
echo `expr $a - $b`
echo "------------------------------"
echo "performing the multiplication:"
echo "------------------------------"
echo `expr $a \* $b`
echo "-------------------------------"
echo "performing the division:"
echo "------------------------------"
echo `expr $a / $b`
echo "------------------------------"
echo "checking the boolean values:"
echo "------------------------------"
if [ $a -eq $b ] then 
echo "they are equal"
else
echo "they are not equal"
echo "------------------------------"
echo "comparing two numbers:"
echo "------------------------------"
echo  [ $a -ne $b ]
