# does all of the commands for initializing a git repo
# usage: ./setupgit.sh repo_name -p(can alias)
# if the -p optionis given it pushes it up also

dirname=${PWD##*/}

if [[ $dirname == "desktop" ]]; then
		echo "I don't think you want to initialize a git repo in the desktop folder...perhaps navigate into another folder?"
		exit 1
fi

GIT_STR='https://github.com/rohan-varma/'
GIT_END='.git'

if [ $# -eq 0 ]; then
	# use default dirname, alert if its desktop, and don't push up
	echo $dirname
	git init
	echo "### $dirname" > README.md
	git add .
	git commit -m "commit"
	git remote add origin $GIT_STR$dirname$GIT_END
	echo "initialized git repo and added origin, but not pushing it up because -p command was not given"
elif [ $# -eq 1 ]; then
	# check if its just the push command
	if [[ $1 == "-p" ]]; then
		echo $dirname
		git init
		echo "### $dirname" > README.md
		git add .
		git commit -m "commit"
		git remote add origin $GIT_STR$dirname$GIT_END
		echo "-p was given, so pushing up the repo"
		git push -u origin master
	else
		git init
		echo "### $1" > README.md
		git add .
		git commit -m "commit"
		git remote add origin $GIT_STR$1$GIT_END
		echo "initialized git repo and added origin, but did not push up because -p command was not given"
	fi
else
	git init
	echo "### $1" > README.md
	git add .
	git commit -m "commit"
	git remote add origin $GIT_STR$1$GIT_END
	if [[ $2 == "-p" ]]; then
		echo "-p was given, so pushing up the repo"
		git push -u origin master
	else
		echo "no push command (-p) given, so not pushing up the repo."
	fi
fi