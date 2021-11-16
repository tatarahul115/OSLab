read -p "Enter the file name: " file

count=1
while read line
do
	echo $line
	if [ `expr $count % 15` -eq 0 ]
	then
        	read input </dev/tty
	fi
        count=`expr $count + 1`
done < $file