read -p "Enter the file name: " file

echo "Number of vowels in the file: `tr -cd 'aeiouAEIOU' < $file | wc -c`"
echo "Number of spaces in the file: `tr -cd ' ' < $file | wc -c`"
echo "Number of characters: `wc -c < $file`"
echo "Number of symbols in the file: `tr -cd '!@#$%^&*+=(){}[]?/-_' < $file | wc -c`"
a=`wc -l < $file`
echo "Number of lines are `expr $a + 1`"