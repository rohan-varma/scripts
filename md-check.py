# check markdown files for \vert and |, and replace them with the better \mid. 
import sys
BAR = '|'
VERT = "\\vert"
if __name__ == '__main__':
	out = ""
	diffs = 0
	if len(sys.argv) != 2:
		print('USAGE: python3 md-check.py [FILENAME]')
		exit(1)
	else:
		fname = sys.argv[1]
		with open(fname) as f:
			lines = f.read()
		i = 0

		while i < len(lines):
			bar_flag = lines[i] == BAR
			vert_flag = i + len(VERT) < len(lines) and lines[i:i+len(VERT)] == VERT
			if bar_flag or vert_flag:
				out+="\\mid"
				if bar_flag:
					print(lines[i])
				elif vert_flag:
					print(lines[i:i+len(VERT)])
				diffs+=1
				if vert_flag:
					i+=len(VERT)
			else:
				out+=lines[i]
			i+=1
	print("found {} diffs".format(diffs))
	if diffs:
		with open(sys.argv[1][:-3] + "-formatted.md", "w+") as f:
			f.write(out)

