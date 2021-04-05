if [ "$#" -ne 2 ]; then
      echo "Usage: checkout [PR ID] [local branchname you want]"
        exit 1
    fi
    git fetch origin pull/$1/head:$2
    echo $
    echo $2
    # attempt to check out the branch
    git checkout $2
