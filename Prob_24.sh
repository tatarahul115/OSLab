read file
count=1

while read line
do

	if [ `expr $count % 2` -ne 0 ]
	then
		echo $line >> temp.txt
	fi
	count=`expr $count + 1`

done < $file

mv temp.txt $file