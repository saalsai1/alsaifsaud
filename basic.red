
; author   Saud Alsaif

        org start

start   spl launch1
        spl launch2
        mov.i #100, scan_pointer
scan_loop:
        cmp.i  #0, @scan_pointer
        slt.ab #20, scan_pointer
        jmp create_silk
        add    #50, scan_pointer
        jmp scan_loop

create_silk:
        spl silk1
        spl silk2
        mov.i }-1, >-1
        mov.i }-2, >-2
        jmp start

launch1:
        spl silk1
        spl silk2
        mov.i }-1, >-1
        jmp start

launch2:
        spl silk3
        spl silk4
        mov.i }-1, >-1
        jmp start

silk1:
        spl @0, }10
        mov.i }-1, >-1
        jmp silk1

silk2:
        spl @0, }20
        mov.i }-1, >-1
        jmp silk2

silk3:
        spl @0, }30
        mov.i }-1, >-1
        jmp silk3

silk4:
        spl @0, }40
        mov.i }-1, >-1
        jmp silk4

scan_pointer dat #0, #0
