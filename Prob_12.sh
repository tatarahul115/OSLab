read -p "Enter a String: " text

word=$(echo -n "$text" | wc -w)

char=$(echo -n "$text" | wc -c)



# Output to be taken:
echo "Number of Words = $word"
echo "Number of Characters = $char"