exec 1> /gpfs01/dev/bi/code/BI_MRDM/logs/`echo $0 | cut -d '/' -f8 | sed 's/\.sh//g'`_$(date +"%Y%m%d_%H%M%S").log 2>&1
input_file=$1
present_path=`pwd`
present_file="${present_path}/${input_file}"
do_Mail()
{
echo "********* Sending Mail*******************"

pattern1=`ls $0 | cut -d '.' -f1`
temp_mail="/gpfs01/dev/bi/code/BI_MRDM/scripts/mails/${pattern1}.mail"
cd /gpfs01/dev/bi/code/BI_MRDM/logs/
pattern=`ls *${pattern1}*.log | tail -n 1`
attachment=/gpfs01/dev/bi/code/BI_MRDM/logs/${pattern}
	DT=`date`
	SUB="Practise"
	TO=Rohan.kumarDube@anthem.com;  
	CC=Rohan.kumarDube@anthem.com;
	echo "hi find the logs content below." >  ${temp_mail}
	echo " the file name and location is ${attachment}" >> ${temp_mail}
	echo "the log content is :" >>  ${temp_mail}
	echo "---------------------" >> ${temp_mail}
	cat ${attachment} >> ${temp_mail}
	echo "---------------------------------------" >> ${temp_mail} 
	echo "the output content after reversal is :" >> ${temp_mail} 
	echo "---------------------------------------" >> ${temp_mail}
	cat ${present_file} >> ${temp_mail}
    mailx -s "${SUB} ${DT}" -c "${CC}" ${TO}  <${temp_mail}
    if [ $? -eq 0 ]
    then
		echo "Mailed the details succefully"
	else
		echo "mail not sent" 
	fi
	#rm -f ${temp_mail}
return 0;
}


cat test.txt | rev > temp1.txt
awk '{printf ("%s | ", $0); getline < "temp1.txt"; print $0 }' test.txt > temp2.txt
rm -rf temp.txt 
rm -rf temp1.txt
mv temp2.txt test.txt
do_Mail
