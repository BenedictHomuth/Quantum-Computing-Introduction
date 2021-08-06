import qsharp

from NumberGenerator import GenerateNumber

zeroes = 0
ones = 0
for i in range (10000):
    if GenerateNumber.simulate() == 0:
        zeroes = zeroes + 1
    else:
        ones = ones + 1

print('Zeroes: ' + str(zeroes))
print('Ones: ' + str(ones))