read -p"Enter an Input: " n
if [[ $n =~ ^[0-9]+$ ]];then
      echo "Input is a number"
   else
      echo "Input is a string"
   fi

#The regular expression will match the contents of n when n from start (^) to end ($) matches one or more (+) digits [0-9].