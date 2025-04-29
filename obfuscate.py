import sys
import random

def obfuscate(content, comment_length=48):
    lines = content.split('\n')
    new_lines = []
    for line in lines:
        if line.strip() and not line.strip().startswith(';'):
            comment = ''.join(random.choices('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', k=comment_length))
            new_lines.append(f"{line:<50} ; {comment}")  # Adjusted alignment
        else:
            new_lines.append(line)  # Preserve empty/comment lines
    return '\n'.join(new_lines)

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python obfuscate.py <input_file> <output_file>", file=sys.stderr)
        sys.exit(1)

    try:
        with open(sys.argv[1], 'r') as infile:
            content = obfuscate(infile.read())

        with open(sys.argv[2], 'w') as outfile:
            outfile.write(content)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)
