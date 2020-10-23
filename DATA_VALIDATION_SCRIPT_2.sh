echo "###################################################"
echo "FILE VALIDATION SCRIPT -- deletes the row "
echo "###################################################"
rows=`wc -l data.txt | cut -c1-2`;
echo "total number of rows :" $rows;
echo "###################################################"
column=`awk -F"," '{ print NF } ' data.txt | head -1`;
echo "total number of columns:" $column;
echo "###################################################"
echo "the data is present in the fomat: ";
cat data.txt | head -1 | awk -F"," '{print $i}' data.txt;
echo "###################################################"
echo "To remove the spaces in the file "
echo "###################################################"
sed '/^ *$/d' data.txt
echo "###################################################"
cat data.txt |grep -iv "total" | grep -iv "data" | grep -iv "null" | grep -iv  "-" |grep -iv "#" |grep -iv "%" |grep -iv ")" | grep -iv "(" |grep -iv  "@" |grep -iv "~" 
if [ $? -eq 0 ]
then
	echo "###################################################"
	echo "error in last line , Removing last line"
	#cut -d',' -f1-$column data.txt
	head -n -1 data.txt > temp.txt
fi
del=`awk -F ',' '{if(NF!=$column) print NR }' data.txt`
sed '2d' temp.txt > temp1.txt
echo "###################################################"
echo "removing the temporary files "
rm -rf temp.txt
#rm -rf data.txt
mv temp1.txt data1.txt
echo "###################################################"
echo "modified data"
echo "###################################################"
cat data1.txt
echo "###################################################"
sleep 5 
