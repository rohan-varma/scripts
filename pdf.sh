USAGE_STR="USAGE: ./pdf.sh FILENAME"

if [ $# -ne 1 ]; then
	echo $USAGE_STR
	exit 1
else
	FILENAME=$1
	python3 pdf.py $FILENAME
fi