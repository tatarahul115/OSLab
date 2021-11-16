echo -n "Enter the file name : "
read file
 
if [ ! -f $file ]
then
	echo "$file not a file!"
	exit 1
fi

echo -n "Enter a Password : "
read password

crypt $password < $file > $file.cpy
echo  "$file.cpy is now encrypted!!!"