# check markdown files for \vert and |, and replace them with the better \mid. 
import sys
BAR = '|'
VERT = "\\vert"
if __name__ == '__main__':
	out = ""
	diffs = 0
	if len(sys.argv) != 2:
		print('USAGE: python3 md-check.py [FILENAME]')
	else:
		fname = sys.argv[1]
		with open(fname) as f:
			lines = f.read()
		i = 0
		while i < len(lines):
			if lines[i] == BAR or (i + len(VERT) < len(lines) and lines[i:i+len(VERT)] == VERT):
				out+="\\mid"
				print(lines[i])
				diffs+=1
				if i + len(VERT) < len(lines) and lines[i:i+len(VERT)] == VERT:
					i+=len(VERT)
			else:
				out+=lines[i]
			i+=1
	print("found {} diffs".format(diffs))
	if diffs:
		with open(sys.argv[1][:-3] + "-formatted.md", "w+") as f:
			f.write(out)

