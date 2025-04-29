;strategy Multi-component warrior with scanner, paper and stone components
;assert CORESIZE == 8000

        ORG start

start   SPL scanner      ; Split to scanner component
        SPL paper        ; Split to paper component
        JMP stone        ; Jump to stone component

; Scanner component - efficiently detects and targets enemy code
scanner ADD #scan_step, scan_ptr
        JMZ scanner, @scan_ptr  ; Skip if location is empty
        MOV scan_bomb, >scan_ptr ; Carpet bomb when enemy found
        MOV scan_bomb, >scan_ptr
        MOV scan_bomb, >scan_ptr
        ADD #10, scan_ptr       ; Advance to continue bombing
        DJN -3, #5              ; Bomb 5 locations
        JMP scanner             ; Resume scanning

; Paper component - replicator that spreads quickly
paper   SPL 1           ; Generate 8 processes
        SPL 1
        SPL 1
        MOV <copy, {copy  ; Copy paper code
        MOV <copy, {copy
        MOV <copy, {copy
paper_attack MOV paper_bomb, <3333  ; Attack while replicating
        MOV <copy, {copy
copy    JMP @copy, paper+1      ; Jump to new copy with offset
        DAT #0, #paper+1

; Stone component - aggressive bomber
stone   MOV bomb, @stone_ptr    ; Stone/bomber component
        ADD #stone_step, stone_ptr
        SPL 0                   ; Create continuous process stream
        MOV bomb, *stone_ptr    ; Indirect bombing (catches replicators)
        DJN stone, stone_count

; Core clear - activates later in the battle
clear   MOV bomb, >clear_ptr    ; Core clear
        DJN clear, clear_ptr    ; Continue until pointer is 0

; Data section
scan_ptr    DAT #500            ; Scanning pointer
scan_bomb   SPL 0, 0            ; SPL bomb for scanner (creates process traps)
scan_step   EQU 11              ; Small step for thorough scanning

stone_ptr   DAT #200            ; Bombing pointer for stone
stone_step  EQU 5               ; Matches basic3's replication step
stone_count DAT #2000, #2000    ; Run stone longer

paper_bomb  DAT #0, #0          ; Paper's bomb

bomb        DAT #0, #0          ; Main DAT bomb
clear_ptr   DAT #4000, #10      ; Core clear pointer

        END