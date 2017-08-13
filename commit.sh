# so i don't have to do 3 things to commit and push up some code
if [ $# -eq 0 ]; then
    echo "Usage: ./commit.sh COMMIT_MSG (can alias)"
else
    git add .
    git commit -m $1
    git push
fi
