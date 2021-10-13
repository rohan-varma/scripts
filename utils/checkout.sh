if [ "$#" -ne 2 ]; then
  echo "Usage: checkout [PR ID] [local branchname you want]"
  exit 1
fi
# substitute upstream with whatever the name of the remote is
UPSTREAM_NAME=origin
git fetch $UPSTREAM_NAME pull/$1/head:$2
echo $1
echo $2
# attempt to check out the branch
git checkout $2
