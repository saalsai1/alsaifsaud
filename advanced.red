; Super Advanced 
ORG start

start   MOV bomb, <10
        MOV bomb, <20
        MOV bomb, <30
        ADD #5, start
        JMP start

bomb    DAT #0, #0

END start
