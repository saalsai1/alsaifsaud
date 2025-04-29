;redcode-94
;name Hybrid Warrior
;assert CORESIZE == 8000

        ORG begin

begin   SPL scanner
        SPL bomber
        JMP clear

scanner ADD #1, scan
        JMZ -1, @scan
        MOV bomb, >scan
        JMP scanner
scan    DAT #0

bomber  MOV bomb, @ptr
        ADD #1, ptr
        JMP bomber
ptr     DAT #100

clear   MOV bomb, >clear
        DJN -1, #500

bomb    DAT 0, 0
