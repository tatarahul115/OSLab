echo "Select an operation to perform"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
echo "6. Exponent"
echo "7. Exit"
read -p "Select an Option: " option

if [ $option -gt 6 ]
then
  echo "Option not found."
  exit
fi

read -p "Enter number 1: " num1
read -p "Enter number 2: " num2

if [ $option -eq 1 ]
then
  echo "The addition of $num1 and $num2 is `expr $num1 + $num2`"
elif [ $option -eq 2 ]
then
  echo "The subtraction of $num1 and $num2 is `expr $num1 - $num2`"
elif [ $option -eq 3 ]
then
  echo "The multiplication of $num1 and $num2 is `expr $num1 \* $num2`"
elif [ $option -eq 4 ]
then
  echo "The division of $num1 and $num2 is `expr $num1 / $num2`"
elif [ $option -eq 5 ]
then
  echo "The modulus of $num1 and $num2 is `expr $num1 % $num2`"
elif [ $option -eq 6 ]
then
  echo "The exponent of $num1 and $num2 is $[$num1 ** $num2]"
fi