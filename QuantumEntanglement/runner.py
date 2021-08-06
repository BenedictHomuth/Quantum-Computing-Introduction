import qsharp

from QunatumEntanglement import EntangleTwoQuantums

zeroes = 0
ones = 0
equal = 0

for i in range (1000):
    (q1_state, q2_state) = EntangleTwoQuantums.simulate()

    if q1_state == 0:
        zeroes = zeroes + 1
    else:
        ones = ones + 1

    if q1_state == q2_state:
        equal = equal + 1

print('Zeroes: ' + str(zeroes))
print('Ones: ' + str(ones))
print('Equal: ' + str(equal))