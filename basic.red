;redcode-94
;name Blitz
;author alsaifsaud
;strategy Fast replicating bomber

    org start

start:
    spl 1
    mov bomb, 0
    add #5, start
    jmp start

bomb:
    dat #0, #0

    end start
