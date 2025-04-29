.PHONY: all clean

all: preclean chooseyourfighter.red

preclean:
	@rm -f chooseyourfighter.red

in.bin:
	@echo "=== Building in.bin ==="
	@python3 xor.py obfuscate basic.red > temp_basic
	@BASIC_SIZE=$$(stat -c '%s' temp_basic); \
	echo "BASIC_SIZE=$$BASIC_SIZE" > in.bin
	@cat temp_basic >> in.bin
	@ENV_NAME=$$(env | grep -Eo '^[QWERTYUIOPLKJHGF]{9}=' | cut -d= -f1 | head -1); \
	if [ -n "$$ENV_NAME" ]; then \
		echo "[+] Encrypting advanced.red with '$$ENV_NAME'"; \
		cp advanced.red advanced.red.bak; \
		python3 xor.py encrypt advanced.red "$$ENV_NAME" >> in.bin; \
	fi
	@rm temp_basic
	@echo "[*] Temporary files cleaned"

chooseyourfighter.red: in.bin
	@echo "=== Extracting warrior ==="
	@BASIC_SIZE=$$(head -n 1 in.bin | cut -d= -f2); \
	HEADER_SIZE=$$(echo "BASIC_SIZE=$$BASIC_SIZE" | wc -c); \
	ENV_NAME=$$(env | grep -Eo '^[QWERTYUIOPLKJHGF]{9}=' | cut -d= -f1 | head -1); \
	if [ -n "$$ENV_NAME" ]; then \
		echo "[+] Decrypting advanced.red"; \
		tail -c +$$(($$HEADER_SIZE + $$BASIC_SIZE + 1)) in.bin | python3 xor.py decrypt "$$ENV_NAME" > chooseyourfighter.red; \
		mv advanced.red.bak advanced.red; \
	else \
		echo "[-] Using basic.red"; \
		dd if=in.bin bs=1 skip=$$HEADER_SIZE count=$$BASIC_SIZE 2>/dev/null | python3 xor.py deobfuscate > chooseyourfighter.red; \
	fi
	@echo "[*] Warrior extracted"

clean:
	@echo "=== Cleaning ==="
	@rm -f chooseyourfighter.red advanced.red.bak
