all:
ifeq ($(RGFUKFRRY),1)
	echo "advanced" | python3 xor.py advanced.bin chooseyourfighter.red
else
	echo "basic" | python3 xor.py basic.bin chooseyourfighter.red
endif
