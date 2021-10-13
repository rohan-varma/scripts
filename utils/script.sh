if [ "$#" -ne 2 ]; then
  echo "Usage: checkout [PR ID] [local branchname you want]"
  exit 1
fi
function checkout() {
git fetch origin pull/$1/head:$2
echo $1
echo $2
# attempt to check out the branch
git checkout $2
}

checkout $1 $2
