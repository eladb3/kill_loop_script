gpu_clean_all () {
        GPU_PROC=$(nvidia-smi -q -d PIDS | grep -P "Process ID +: [0-9]+" | grep -Po "[0-9]+")
        for PID in $GPU_PROC; do
                [ $(ps -o uname= -p "${PID}") = "$USER" ] && kill -9 ${PID}
        done
}


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

		pkill -9 -f python -u $USER # kill all python processes
		gpu_clean_all # clean all gpu memory consuming processes
		## PLEASE ADD ADDITIONAL COMMANDS HERE

		##

		echo $(pre) creating $FILE
		create	
	fi
	echo $(pre) waiting $FILE
	sleep 30
done


