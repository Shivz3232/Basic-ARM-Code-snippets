//Array Copying Using bytes:

.text
    LDR r0, =A
    LDR r1, =B
    LDR r2, =C
    MOV r5, #4

    LOOP:
        LDRb r3, [r0]
        LDRb r4, [r1]

        STRb r4, [r2]
        STRb r3, [r1]

        ADD r0, r0, #1
        ADD r1, r1, #1
        ADD r2, r2, #1
        
        SUBs r5, r5, #1
        BNE LOOP
    
.data
    A: .byte 0x01, 0x02, 0x03, 0x04
    B: .byte 0x05, 0x06, 0x07, 0x08
    C: .byte 0x00, 0x00, 0x00, 0x00

.end