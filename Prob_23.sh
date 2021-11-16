read file
count=1

while read line
do
	if [ `expr $count % 2` -eq 0 ]
	then
		echo $line >> even.txt
	else
		echo $line >> odd.txt
	fi
	count=`expr $count + 1`
done <$file