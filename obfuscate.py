import sys
import random

def obfuscate(content):
    lines = content.split('\n')
    new_lines = []
    for line in lines:
        if line.strip() and not line.strip().startswith(';'):
            comment = ''.join(random.choices('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', k=48))
            new_lines.append(f"{line:<30} ; {comment}")
    return '\n'.join(new_lines)

if __name__ == "__main__":
    with open(sys.argv[1], 'r') as f:
        print(obfuscate(f.read()))
