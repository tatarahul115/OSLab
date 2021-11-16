start=$HOME

dirs=`find $start -type d`
for dir in $dirs
do
	echo "$dir directory has `ls $dir | wc -l` files"
done