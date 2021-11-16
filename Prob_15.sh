echo -n "Enter a filename: "
read fileName
if [ ! -f $fileName ]
then
	echo "$fileName not a file."
	exit 1
fi
echo "$fileName was last modified on $(stat -c %x $fileName)"