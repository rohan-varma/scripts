# does all of the commands for initializing a git repo
# usage: ./setupgit.sh repo_name (can alias)

GIT_STR='https://github.com/rohan-varma/'
GIT_END='.git'
if [ $# -eq 0 ]; then
	echo "Usage: ./setupgit.sh repo_name"
	exit 0
else
	echo $1
	git init
	touch README.md
	git add .
	git commit -m "commit"
	git remote add origin $GIT_STR$1$GIT_END
	git push -u origin master
fi