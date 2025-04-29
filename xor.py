import sys

key = sys.stdin.read().strip()
with open(sys.argv[1], 'rb') as f:
    data = f.read()

key_bytes = key.encode()
encrypted = bytes([b ^ key_bytes[i % len(key_bytes)] for i, b in enumerate(data)])

with open(sys.argv[2], 'wb') as f:
    f.write(encrypted)
