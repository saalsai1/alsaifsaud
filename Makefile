default:
	env | grep "[RGFUKFRRY]" | md5sum | sha256sum | python3 xor.py in.bin chooseyourfighter.red

clean:
	rm -f chooseyourfighter.red
	rm -f out.bin
