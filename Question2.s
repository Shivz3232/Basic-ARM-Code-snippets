//Array Copying Using bytes:

.text
    LDR r0, =A
    LDR r1, =B
    LDR r2, =C
    MOV r5, #4

    LOOP:
        LDRh r3, [r0]
        LDRh r4, [r1]

        STRh r4, [r2]
        STRh r3, [r1]

        ADD r0, r0, #2
        ADD r1, r1, #2
        ADD r2, r2, #2
        
        SUBs r5, r5, #1
        BNE LOOP
    
.data
    A: .hWord 0x0001, 0x0002, 0x0003, 0x0004
    B: .hWord 0x0005, 0x0006, 0x0007, 0x0008
    C: .hWord 0x0000, 0x0000, 0x0000, 0x0000

.end