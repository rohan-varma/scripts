if [ "$#" -ne 2 ]; then
  echo "Usage: create_ci_all [PR ID] [local branchname you want]"
  exit 1
fi
function checkout() {
git fetch origin pull/$1/head:$2
echo $1
echo $2
# attempt to check out the branch
git checkout $2
}

# This script checks out the branch locally corresponding to the PR ID and pushes it to  a ci-all prefix branch.
checkout $1 $2

git push --set-upstream origin $2:ci-all/$(whoami)/$2