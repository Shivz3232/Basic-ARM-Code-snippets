//Array Copying Using bytes:

.text
    LDR r0, =A
    LDR r1, =B
    MOV r3, #4

    LOOP:
        LDRb r2, [r0]

        STRb r2, [r1]

        ADD r0, r0, #1
        ADD r1, r1, #1
    
        SUBs r3, r3, #1
        BNE LOOP
    
.data
    A: .byte 0x01, 0x02, 0x03, 0x04
    B: .byte 0x00, 0x00, 0x00, 0x00

.end