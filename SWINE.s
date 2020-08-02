.text
    LDR r1, =A
    MOV r2, #0x100
    BL sprint

    SWI 0x11
    
    sprint:
        LDR r0, [r1]
        SWI 0x2
        MOV PC, LR
.data
    A: .asciz "Hello World"
.end