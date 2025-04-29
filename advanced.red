;redcode-94
;name Apocalypse
;author alsaifsaud
;strategy Smart split bombing + survival

    org start

start:
    spl split1
    mov bomb, @ptr
    add #23, ptr
    jmp start

split1:
    spl split2
    spl split3
    spl split4
    spl split5
    spl split6
    mov bomb, @ptr
    add #11, ptr
    jmp split1

split2:
    mov bomb, @ptr
    add #17, ptr
    jmp split2

split3:
    mov bomb, @ptr
    add #19, ptr
    jmp split3

split4:
    mov bomb, @ptr
    add #13, ptr
    jmp split4

split5:
    mov bomb, @ptr
    add #31, ptr
    jmp split5

split6:
    mov bomb, @ptr
    add #29, ptr
    jmp split6

ptr:
    dat #0, #0

bomb:
    dat #0, #0

    end start
