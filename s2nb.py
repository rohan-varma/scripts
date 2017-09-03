"""Python script -> jupyter notebook. 
python3 s2nb.py [script name] [notebook name]"""
import sys
import nbformat
from nbformat.v4 import new_notebook, new_code_cell
USAGE_STR = "python3 s2nb.py [script name] [notebook name]"
if len(sys.argv) < 2:
	print(USAGE_STR)
	exit(1)

nb = new_notebook()
code = open(sys.argv[1]).read()
nb.cells.append(new_code_cell(code))
nbformat.write(nb, (sys.argv[1] if len(sys.argv) == 2 else sys.argv[2]) + ".ipynb")