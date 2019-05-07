USAGE_STR="USAGE: ./message.sh PERSON MESSAGE"

if [ $# -ne 2 ]; then
	echo $USAGE_STR
	exit 1
else
	node /Users/rohan/desktop/messaging/send_message.js $1 $2
fi
