;  Basic 
ORG start

start   MOV bomb, 10
        MOV bomb, 20
        MOV bomb, 30
        JMP start

bomb    DAT #0, #0

END start