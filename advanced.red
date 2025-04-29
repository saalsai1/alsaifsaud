
; author   Saud Alsaif

        org start

start   spl scanner
        spl scanner
        spl scanner
        spl bomber
        jmp start

scanner cmp.i #0, 10
        sne   #0, 20
        slt   #0, 30
        mov.i #0, @scanner
        add   #50, scanner
        jmp scanner

bomber  spl bomber1
        spl bomber2
        spl bomber3
        spl bomber4
        jmp start

bomber1 mov.i bomb, >4000
        mov.i bomb, >8000
        jmp bomber1

bomber2 mov.i bomb, >5000
        mov.i bomb, >9000
        jmp bomber2

bomber3 mov.i bomb, >6000
        mov.i bomb, >10000
        jmp bomber3

bomber4 mov.i bomb, >7000
        mov.i bomb, >11000
        jmp bomber4

bomb    dat #0, #0
