# Replaces it.only and describe.only occurences with it and describe
# If a path is provided, if it's a file then only occurences in that file are changed. If it's a directory that directory's files are recursively evaluated
# If nothing is provided then the current directory's files are recursively evaluated. 

if [ $# -ne 0 ]; then

		if [ "$1" == "-h" ]; then
			echo "Usage: nukeonly [PATH] "
			exit 0
		fi

		name=$1;

		# test files are JS files
		if [[ -f $name && $name =~ .*.js.* ]]; then
  			 sed -i '' 's/describe.only/describe/' $1
  			 sed -i '' 's/it.only/it/' $1

  		elif [[ -d $name ]]; then
  			cd $name
  			find ./ -type f -name '*.js' -exec sed -i '' 's/describe.only/describe/' {} \; -exec sed -i '' 's/it.only/it/' {} \;

  		else
  			echo "This does not seem like a test file or directory..."
  			exit 1
		fi
else
	find ./ -type f -name '*Tests.js' -exec sed -i '' 's/describe.only/describe/' {} \; -exec sed -i '' 's/it.only/it/' {} \; 
fi
