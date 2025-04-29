import sys

def xor_crypt(data, key):
    return bytes([b ^ key[i % len(key)] for i, b in enumerate(data)])

def main():
    # Read the key from stdin (hex format)
    key_hex = sys.stdin.read().strip()
    key_bytes = bytes.fromhex(key_hex)

    # Read input file (binary)
    with open(sys.argv[1], 'rb') as infile:
        data = infile.read()

    # XOR decrypt/encrypt
    output = xor_crypt(data, key_bytes)

    # Write to output file (binary)
    with open(sys.argv[2], 'wb') as outfile:
        outfile.write(output)

if __name__ == "__main__":
    main()
