echo "the choice present for you are : "
echo "=============================="
awk 'NR > 1' link_list.txt  > a.txt 
rm -rf link_list.txt
mv a.txt link_list.txt
awk -F"," '!_[$2]++' link_list.txt > a.txt
awk -F"," '{print $2}' a.txt 
rm -rf a.txt
echo "=============================="
echo "enter the choice "
echo "=============================="
read var
echo "=============================="
echo "entered choice is ${var}"
echo "=============================="
echo "output values are :"
grep ${var} link_list.txt | awk -F"," '{print $3 " ,"}'