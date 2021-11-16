read -p "Enter a Number: " a

for((i=2;i<=a/2; i++))
do
    if [[ $((a%i)) -eq 0 ]]; then
        echo "Number is not prime."
        exit
    fi
done
echo "Number is prime."