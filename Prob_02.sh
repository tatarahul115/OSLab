read -p "Enter Number: " a
if [[ $((a%2)) -eq 0 ]]; then
    echo "Number is even"
    else
    echo "Number is odd"
fi