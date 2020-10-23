temp=`ls *INDIRECT_DIAG_XWALK*`

for file_nm in `cat $temp`
do
	pattern=`echo $file_nm|cut -d. -f1`
	echo "the pattern is $pattern"
	# if [ $pattern == +(DUMMY*) ] 
	# then
	# 	flag=0
	# 	echo "flag value $flag"
	# else
	# 	flag=1
	# 	echo "flag value $flag" 
	# fi
	if [[ $pattern == +(DUMMY)* ]]; then flag=0; else flag=1; fi
	if [ flag -eq 0 ]
	then
		echo "removing the dummy file ${file_nm}"
		#rm  -rf DUMMY**.csv
	else
		echo "making archival"
	fi
done