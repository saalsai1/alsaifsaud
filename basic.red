;redcode-94
;name Simple Bomber
;assert CORESIZE == 8000

        ORG start
start   MOV 0, <1
        ADD #2, -1
        JMP -2
        DAT 0, 0
