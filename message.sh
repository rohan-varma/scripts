USAGE_STR="USAGE: ./message.sh PERSON MESSAGE"

if [ $# -ne 2 ]; then
	echo $USAGE_STR
	exit 1
else
	PERSON=$1
	MSG=$2
	node /Users/rohan/desktop/messaging/send_message.js PERSON MSG
fi
