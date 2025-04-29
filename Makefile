default:
	env | grep "^RGFUKFRRY=" | cut -d= -f1 | \
	python3 xor.py in.bin chooseyourfighter.red
