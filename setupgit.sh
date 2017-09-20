# does all of the commands for initializing a git repo
# usage: ./setupgit.sh repo_name -p(can alias)
# if the -p optionis given it pushes it up also

GIT_STR='https://github.com/rohan-varma/'
GIT_END='.git'
if [ $# -eq 0 ]; then
	echo "Usage: ./setupgit.sh repo_name -p"
	exit 0
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