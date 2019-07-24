name=$1
if [[ -d $name ]]; then
	cd $name
	find ./ -type f -name "*.py" -exec autopep8 --in-place --aggressive --aggressive \;
fi
