import sys
import random

def obfuscate(content):
    lines = content.split('\n')
    new_lines = []
    for line in lines:
        if line.strip() and not line.strip().startswith(';'):
            # Only add inline safe comments
            safe_comment = ''.join(random.choices('0123456789ABCDEF', k=8))
            new_lines.append(f"{line} ; {safe_comment}")
    return '\n'.join(new_lines)

if __name__ == "__main__":
    with open(sys.argv[1], 'r') as f:
        content = f.read()
    print(obfuscate(content))
