FILE=$1

create () {
	touch $FILE
	chmod 777 $FILE
}

pre () {
	echo '['$(hostname)': '$(date +'%F %H:%M:%S')']'
}


create
while true; do
	if [ ! -f "$FILE" ]; then
		TXT="$(pre) $FILE deleted!"
		echo $TXT

		pkill -9 -f python -u $USER
		## PLEASE ADD ADDITIONAL COMMANDS HERE

		##

		echo $(pre) creating $FILE
		create	
	fi
	echo $(pre) waiting $FILE
	sleep 30
done


