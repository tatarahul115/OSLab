read -p "Enter total no.of numbers: " n
i=1
sum=0
echo "Enter Numbers"
while [ $i -le $n ]
do
    read num
    sum=$((sum + num))
    i=$((i + 1))
done
avg=$(($sum / $n))
echo "Average of given numbers is $avg"