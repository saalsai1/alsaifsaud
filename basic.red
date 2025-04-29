;redcode-94
;name Ultimate Basic Bomber
;author alsaifsaud
;strategy Scatter bombs everywhere quickly

    org start

start:
    spl #5
    spl #10
    spl #15
    mov bomb, @0
    add #17, start
    jmp start

bomb:
    dat #0, #0

    end start
