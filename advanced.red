; Ultimate Advanced Warrior
MOV 2, @2
MOV 2, @2
JMP -2
MOV 2, @2
MOV 3, @3
ADD -1, 2
JMP -2
DAT 0, 0
MOV 0, <5
MOV 1, @1
JMP -1



MOV 2, @2
MOV 3, @3
ADD -2, 4
JMP -3
DAT 0, 0

MOV 0, <50
MOV 0, <100
MOV 0, <200
JMP -4
DAT 0, 0

MOV 1, @1
MOV 2, @2
ADD 10, 20
JMP -5
DAT 0, 0

SPL 0
MOV 2, @2
MOV 3, @3
ADD 5, 5
JMP -3
DAT 0, 0




; ULTRA HYBRID ADVANCED

        SPL 1
        MOV 0, 1
        ADD #4, 2
        JMP -2

        DAT 0, 0

        SPL 5
        MOV 5, @5
        ADD #5, @6
        JMP -3

        SPL 20
        MOV 20, <20
        MOV 40, <40
        MOV 60, <60
        ADD #20, <10
        JMP -6

        SPL 100
        MOV 100, 200
        MOV 200, 300
        MOV 300, 400
        MOV 400, 500
        ADD 10, 20
        JMP -5

        DAT 0, 0
        DAT 0, 0
