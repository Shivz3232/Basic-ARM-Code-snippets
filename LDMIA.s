.text
    MOV r0, #1
    MOV r1, #2
    MOV r2, #3
    LDR r3, =A
    STMIB r3, {r0 - r2}!
    ADD r3, r3, #12
    LDMDB r3, {r4 - r6}
.data
    A: .word 0
.end