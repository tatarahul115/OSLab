read -p "Enter string: " string
len=${#string}

if [[ $len -lt 5 ]]
then
    echo "Less than 5"
fi