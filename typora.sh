USAGE_STR="USAGE: ./typora.sh FILENAME"

if [ $# -ne 1 ]; then
	echo $USAGE_STR
	exit 1
else
	FILENAME=$1
	if [ ! -f $FILENAME ]; then
    	touch $FILENAME
    fi
    open -a typora $FILENAME
fi
