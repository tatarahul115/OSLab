read -p "Enter A: " a
read -p "Enter B: " b
read -p "Enter C: " c
echo "A = $a    B = $b      C = $c"
 st="is greatest"
if [[ $a -gt $b && $a -gt $c ]]; then
    echo "A $st"
elif [[ $b -gt $a && $b -gt $c ]]; then
    echo "B $st"
else [[ $c -gt $b && $c -gt $a ]]
    echo "C $st"
fi