### Scripts

Scripts to automate tedious tasks / do things faster / productivity

commit.sh: Add all change files and commit them with a message

setupgit.sh: Sets up a git repository and optionally pushes it up. Defaults to the directory name if no specific repository name is provided. Also warns and errors out if the current directory is desktop (since I frequently make a directory but forget to cd into it before initializing a git repo)

only.sh: For a JS test file, changes the first occurence of describe to describe.only and can do this recursively for a directory. Useful for fast testing of modules in a node.js environment with mocha/chai as the testing framework.

nukeonly.sh: Removes all occurences of describe.only and it.only in a javascript test file

doubledollar.py: For a given file, reformats math formatting of the form $ _equation_ $ to $$ _equation_ $$ because Jupyter supports the former but Github-flavored markdown only supports the latter

s2nb.py: Converts a python script to a Jupyter Notebook

typora.sh: Opens up the typora editor with a specified filename (creating the file if it doesn't exist)