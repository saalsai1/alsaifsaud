import random
import sys

key = [0] * 763

random.seed(42)
with open(sys.argv[1], "rb") as infile:
    while True:
        c = sys.stdin.read(1)
        if c:
            for i in range(ord(c)):
                numj = random.randint(4,250)
                for j in range(numj):
                    key[random.randint(0, 762)] = random.randint(1,250)
        else:
            break
    outfile = open(sys.argv[2], "ab")
    count = 0
    while True:
        byte = infile.read(1)
        if byte:
            outbyte = (int.from_bytes(byte) ^ key[count % 763] & 0x7f).to_bytes(1)
            outfile.write(outbyte)
            count += 1
        else:
            break
#print(key)

