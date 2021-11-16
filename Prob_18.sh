file="a.txt"
# note leave last line as empty

while read line
do
	for word in $line
	do
		echo "$word"
	done
done < $file