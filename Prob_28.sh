read -p "Enter the file name: " file

a=0
an=0
the=0

while read line
do
	for w in $line
	do
		temp=`echo $w | tr '[A-Z]' '[a-z]'`
		if [ $temp == "a" ]
		then
			a=`expr $a + 1`
		elif [ $temp == "an" ]
		then
			an=`expr $an + 1`
		elif [ $temp == "the" ]
		then
			the=`expr $the + 1`
		fi
	done
done < $file
echo "Total number of a's: $a"
echo "Total number of an's: $an"
echo "Total number of the's: $the"