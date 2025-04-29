; Ultimate Basic Warrior
MOV 0, <1
ADD 1, 2
JMP -1
MOV 0, <1
MOV 2, <3
ADD 4, @2
JMP -2
DAT 0, 0
MOV 0, 1
MOV 0, 2
ADD 4, 3
JMP -2



MOV 0, 1
MOV 0, 2
ADD 5, 6
JMP -2
DAT 0, 0

MOV 0, <10
MOV 2, <20
ADD 4, @30
JMP -4
DAT 0, 0

MOV 5, @5
ADD 5, 5
JMP -1
MOV 1, <1
MOV 3, <3
ADD 2, @2
JMP -5
DAT 0, 0


SPL 0
MOV 0, 1
ADD 2, 3
JMP -2
DAT 0, 0




; ULTRA HYBRID BASIC

        SPL 1          ; Start parallel thread
        MOV 0, 1       ; Imp-like motion
        ADD #4, 2      ; Adjust pointer
        JMP -2         ; Loop
        
        DAT 0, 0       ; Trap

        SPL 5
        MOV 5, @5
        ADD #5, @6
        JMP -3

        SPL 10
        MOV 10, <10
        MOV 20, <20
        MOV 30, <30
        JMP -6

        MOV 100, 200
        MOV 200, 300
        MOV 300, 400
        ADD #7, @8
        JMP -2

        DAT 0, 0
        DAT 0, 0
        DAT 0, 0
