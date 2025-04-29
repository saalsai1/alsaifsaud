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


mov bomb, 100
mov bomb, 200
mov bomb, 300
bomb dat #0, #0


mov bomb, @ptr1
mov bomb, @ptr2
add #50, ptr1
add #50, ptr2
jmp start


spl 0
mov @start, ptr
add #5, ptr
add #1, counter
mov bomb, @bptr
add #25, bptr
jmp start





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








; ULTRA FULL MEMORY FILLING BASIC WARRIOR

SPL 1
MOV 0, 1
ADD #5, 2
JMP -2

DAT 0, 0
DAT 0, 0
DAT 0, 0

; Bomb loop 1
SPL 5
MOV 5, @5
ADD #5, @6
JMP -3

; Bomb loop 2
SPL 10
MOV 10, <10
MOV 20, <20
MOV 30, <30
JMP -6

; Imp spiral
MOV 100, 200
MOV 200, 300
MOV 300, 400
MOV 400, 500
JMP -4

; Trap zone
DAT 0, 0
DAT 0, 0
DAT 0, 0

; Paper-like expansion
MOV 10, <10
MOV 20, <20
MOV 30, <30
MOV 40, <40
MOV 50, <50
JMP -6

; Final memory filler
MOV 0, 1
MOV 1, 2
MOV 2, 3
MOV 3, 4
MOV 4, 5
MOV 5, 6
MOV 6, 7
MOV 7, 8
MOV 8, 9
JMP -9

DAT 0, 0
