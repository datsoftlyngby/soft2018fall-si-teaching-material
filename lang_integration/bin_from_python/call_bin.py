import subprocess as subp
import time


proc = subp.Popen(["./cli_avg", '{"matrix": [[1,2,3], [3,4,5,5]]}'], 
                  stdout=subp.PIPE, stdin=subp.PIPE)

data = None
for line in iter(proc.stdout.readline, b''):
    print('Got result: {}'.format(line))
    data = [float(el) for el in line.replace('[', '').replace(']', '').split(',')]
    # break
    print([2 * el for el in data])
proc.communicate()

# print([2 * el for el in data])
