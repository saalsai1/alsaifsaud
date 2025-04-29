;assert CORESIZE == 8000

        ORG start

start   SPL bomber      ; Split to create two processes
        JMP scanner     ; Jump to scanning component

bomber  MOV bomb, @ptr  ; Standard bombing
        ADD #step1, ptr
        JMP bomber

scanner MOV bomb, }scan ; Scan forward for patterns
        MOV bomb, }scan ; Double bomb to ensure kill
        ADD #step2, scan
        JMP scanner

ptr     DAT #100        ; Bombing pointer
scan    DAT #200        ; Scanning pointer
bomb    DAT #0, #0      ; DAT bomb
step1   EQU 5           ; Target basic3's replication step size
step2   EQU 25          ; Target basic3's bombing step size

        END