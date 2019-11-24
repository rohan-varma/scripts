# Run tests given by a command repeatedly in a loop and writes output to files.
import subprocess
import random
import sys

assert len(sys.argv) >= 3, "usage: python run_test.py command iterations"
cmd, n = sys.argv[1], int(sys.argv[2])
print(cmd)
print(n)
for i in range(n):
    completed = subprocess.run(
        cmd,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        shell=True)
    print("running test {} iteration {}".format(cmd, i))
    if completed.returncode != 0:
        print("TEST FAILED")
        rand_num = random.randint(0, 999999999)
        file_name = "test_output_{}".format(rand_num)
        print("Writing output to {}".format(file_name))
        with open(file_name, "w+") as f:
            output_and_err = completed.stderr + completed.stdout
            f.write(output_and_err.decode())
    else:
        print("all tests completed successfully")
        rand_num = random.randint(0, 999999999)
        file_name = "test_output_{}".format(rand_num)
        print("Writing output to {}".format(file_name))
        with open(file_name, "w+") as f:
            output_and_err = completed.stderr + completed.stdout
            f.write(output_and_err.decode())
