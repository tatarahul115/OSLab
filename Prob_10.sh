read -p "Enter the String: " n
len=${#n}
flag=1
for((i=0;i<=len/2;i++))
do
    c1="${n:$i:1}"
    c2="${n:$len-$i-1:1}"
    if [ $c1 != $c2 ];then
      flag=0
      echo "String is not palindrome"
      break
    fi
done
if(( $flag==1)); then
echo "String is Palindrome"
fi