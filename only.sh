# Changes the first describe block into describe.only so that the whole test file is run
# If a path is provided, if it's a file then only occurences in that file are changed. If it's a directory that directory's files are recursively evaluated
# If nothing is provided then the current directory's files are recursively evaluated. 

if [ $# -ne 0 ]; then
		if [ "$1" == "-h" ]; then
			echo "Usage: only [PATH] "
			exit 0
		fi
		name=$1;
		# assumes that test files have ...js in them
		if [[ -f $name && $name =~ .*.js.* ]]; then
			gawk -i inplace '!x{x=sub("describe","describe.only")}7' $1
  		elif [[ -d $name ]]; then
  			cd $name
  			find ./ -type f -name '*.js' -exec gawk -i inplace '!x{x=sub("describe","describe.only")}7' {} \;

  		else
  			echo "This does not seem like a test file or directory..."
  			exit 1
		fi
else
	find ./ -type f -name '*.js' -exec gawk -i inplace '!x{x=sub("describe","describe.only")}7' {} \;
fi