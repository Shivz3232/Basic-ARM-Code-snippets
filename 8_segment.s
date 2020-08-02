.text
        BEGIN:
                MOV r0, #0
                MOV r2, #0
                
                MOV r3, #3
                LDR r1, =P
        PES:
                LDRb r0, [r1]
                SWI 0x200
                BL DELAY
                ADD r1, r1, #1
                SUB r3, r3, #1
                CMP r3, #0
                BNE PES
                
        AGAIN:
                SWI 0x202
                CMP r0, #1
                BEQ LOOP1
                CMP r0, #2
                BEQ LOOP2
                B AGAIN
                
        LOOP1:
                MOV r5, #16
                LDR r1, =zero
                
        BACK1:
                LDRb r0, [r1]
                SWI 0x200
                BL DELAY
                ADD r1, r1, #1
                SUB r5, r5, #1
                CMP r5, #0
                BNE BACK1
                B AGAIN
        
        LOOP2:
                MOV r5, #16
                LDR r1, =F

        BACK2:
                LDRb r0, [r1]
                SWI 0x200
                BL DELAY
                SUB r1, r1, #1
                SUB r5, r5, #1
                CMP r5, #0
                BNE BACK2
                B AGAIN

        DELAY:
                MOV r4, #32000
        LOOP3:
                SUB r4, r4, #1
                CMP r4, #0
                BGE LOOP3
                MOV pc, lr

.data
        zero:   .byte 0b11101101
        one:    .byte 0b01100000
        two:    .byte 0b11001110
        three:  .byte 0b11101010
        four:   .byte 0b01100011
        five:   .byte 0b10101011
        six:    .byte 0b10101111
        seven:  .byte 0b11100000
        eight:  .byte 0b11101111
        nine:   .byte 0b11101011
        A:      .byte 0b11100111
        B:      .byte 0b00101111
        C:      .byte 0b10001101
        D:      .byte 0b01101110
        E:      .byte 0b10001111
        F:      .byte 0b10000111
        P:      .byte 0b11000111
        e:      .byte 0b10001111
        S:      .byte 0b10101011
.end
