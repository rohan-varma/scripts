if [ $# -lt 1 ]; then 
    echo "USAGE: loop command [n_times=5]"
    exit 1
fi

if [ $# -eq 1 ]; then
    for i in {0..5} ; do $1 ; done
    exit 0
fi

for i in $(eval echo {0..$2}); do echo $1; done
