read -p "Enter String 1: " str1
read -p "Enter String 2: " str2

str3="$str1$str2"
echo "String 1: $str1"
echo "String 2: $str2"
echo "Concatenated string: $str3"
echo "Length of conacatenated string: ${#str3}"