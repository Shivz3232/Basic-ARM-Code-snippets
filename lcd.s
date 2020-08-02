.text
        MOV r0, #30
        MOV r1, #7
        MOV r7, #0
        LDR r8, =num
        LDR r8, [r8]
        LDR r2, =str
        
        LOOP:
                SWI 0x204
                BL SUM
                CMP r0, #0
                SUBNE r0, r0, #1
                SWIEQ 0x11
                B LOOP
        SUM:
                CMP r7, r8
                ADDNE r7, r7, #1
                BNE SUM
                SWI 0x206
                MOV r7, #0
                MOV pc, lr

.data
        num: .word 5000
        str: .asciz "PESU"

.end
