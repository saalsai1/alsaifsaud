import sys

def xor_crypt(data, key):
    return bytes([b ^ key[i % len(key)] for i, b in enumerate(data)])

def main():
    key_hex = sys.stdin.read().strip()
    key_bytes = bytes.fromhex(key_hex)

    with open(sys.argv[1], 'rb') as infile:
        data = infile.read()

    output = xor_crypt(data, key_bytes)

    with open(sys.argv[2], 'wb') as outfile:
        outfile.write(output)

if __name__ == "__main__":
    main()
