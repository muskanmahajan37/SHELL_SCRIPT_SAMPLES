exec 1> $CODE/BI_MRDM/logs/`echo $0 | cut -d '/' -f8 | sed 's/\.sh//g'`_$(date +"%Y%m%d_%H%M%S").log 2>&1
directory=$1
pattern_matching=$2
print_lines=$3



present_directory=`pwd`
#pattern matching
grep -r ${pattern_matching} ${directory} > temp.txt 
sort -u temp.txt | awk -F"/" '{print $NF}' > temp1.txt
rm -rf temp.txt
awk -F":" '{print $1}' temp1.txt > temp2.txt
rm -rf temp1.txt
mv temp2.txt temp.txt

while IFS= read -r file
do
  echo "----------"
  echo "$file"
  echo "----------"
  # sed -n '1,${print_lines}' p ${file}
  # awk 'FNR <= ${print_lines}' ${file}
  cd ${directory}
  head -n ${print_lines} ${file}
done < temp.txt

cd ${present_directory}
rm -rf temp.txt




