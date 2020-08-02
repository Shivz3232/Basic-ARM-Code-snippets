//Array Copying Using bytes:

.text
    LDR r0, =A
    LDR r1, =B
    MOV r3, #4

    LOOP:
        LDRh r2, [r0]

        STRh r2, [r1]

        ADD r0, r0, #2
        ADD r1, r1, #2
    
        SUBs r3, r3, #1
        BNE LOOP
    
.data
    A: .hWord 0x0001, 0x0002, 0x0003, 0x0004
    B: .hWord 0x0000, 0x0000, 0x0000, 0x0000

.end