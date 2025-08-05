read -p "Input file path: " file

if [ -f $file ]; then
	echo "Ninja - $(date)" >> $file
else
	touch $file
	echo "Ninja - Created $(date)" >> $file
fi

