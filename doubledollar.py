import sys
if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("USAGE: python doubledollar.py file")
        exit(1)
    else:
        fname = sys.argv[1]

    with open(fname, 'r') as f:
        data = f.read()

    new_data = ""
    for i in range(len(data)):
        # copy over
        new_data += data[i]
        if data[i] == '$':
            if (i -
                1 >= 0 and data[i -
                                1] != '$' and i +
                1 < len(data) and data[i +
                                       1] != '$') or (i +
                                                      1 == len(data)):
                new_data += '$'

    with open("{}-md".format(fname), 'w') as f:
        f.write(new_data)
