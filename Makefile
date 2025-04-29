default:
	env | grep "[A-Z]\{9\}" | md5sum | sha256sum | python3 xor.py in.bin out.bin
	strings -wn 40 out.bin | grep -v "KOA\[" | tr -d '\014-\015' > chooseyourfighter.red
	rm -f out.bin

clean:
	rm -f out.bin
	rm -f *.red
