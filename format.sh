if [ $# -ne 1 ]; then
	echo "USAGE: ./format.sh file_or_directory"
	exit 1
fi

name=$1
if [[ -d $name ]]; then
	cd $name
	find ./ -type f -name "*.py" -exec autopep8 --in-place --aggressive --aggressive {} \;
else
	autopep8 --in-place --aggressive --aggressive $name
fi
