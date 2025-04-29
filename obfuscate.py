import sys
import random

def obfuscate(content):
    lines = content.split('\n')
    new_lines = []
    for line in lines:
        if line.strip() and not line.strip().startswith(';'):
            new_lines.append(f"{line} ; {''.join(random.choices('0123456789ABCDEF', k=8))}")
        if random.random() > 0.7:
            new_lines.append(f"; {''.join(random.choices('QWERTYUIOPLKJHGF', k=16))}")
    return '\n'.join(new_lines)

if __name__ == "__main__":
    with open(sys.argv[1], 'r') as f:
        content = f.read()
    print(obfuscate(content))
