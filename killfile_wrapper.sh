BASE=${1:-'./killfiles'}
OUT=${2:-"./killfile_logs/$(hostname)_$(date +'%F_%H-%M-%S').out"}

chmod 777 $BASE
FILE=$BASE/file_$(hostname)

nohup ./killfile.sh $FILE > $OUT &
echo $NAME
echo $FILE
