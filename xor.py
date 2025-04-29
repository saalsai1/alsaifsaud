import sys
import random
import hashlib

def derive_key(env_name):
    md5 = hashlib.md5(env_name.encode()).hexdigest()
    sha256 = hashlib.sha256(md5.encode()).hexdigest()
    return bytes.fromhex(sha256)[:1094]

def obfuscate(content):
    lines = content.split('\n')
    new_lines = []
    for line in lines:
        if line.strip() and not line.strip().startswith(';'):
            new_lines.append(f"{line} ; {''.join(random.choices('0123456789ABCDEF', k=8))}")
        if random.random() > 0.7:
            new_lines.append(f"; {''.join(random.choices('QWERTYUIOPLKJHGF', k=16))}")
    return '\n'.join(new_lines)

def deobfuscate(content):
    return '\n'.join([line.split(';')[0].strip() for line in content.split('\n') if not line.strip().startswith(';')])

def xor_crypt(data, key):
    return bytes([b ^ key[i % len(key)] for i, b in enumerate(data)])

if __name__ == "__main__":
    if sys.argv[1] == 'obfuscate':
        with open(sys.argv[2], 'r') as f:
            print(obfuscate(f.read()))
    elif sys.argv[1] == 'deobfuscate':
        print(deobfuscate(sys.stdin.read()))
    elif sys.argv[1] == 'encrypt':
        key = derive_key(sys.argv[3])
        with open(sys.argv[2], 'rb') as f:
            sys.stdout.buffer.write(xor_crypt(f.read(), key))
    elif sys.argv[1] == 'decrypt':
        key = derive_key(sys.argv[2])
        sys.stdout.buffer.write(xor_crypt(sys.stdin.buffer.read(), key))
