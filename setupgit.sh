# does all of the commands for initializing a git repo
# usage: ./setupgit.sh repo_name -p(can alias)
# if the -p optionis given it pushes it up also

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
	if [[ $2 == "-p" ]]; then
		echo "push command given"
		git push -u origin master
	else
		echo "no push!"
	fi
fi