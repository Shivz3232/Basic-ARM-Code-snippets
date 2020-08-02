.text
    MOV r0, #3
    MOV r1, #3
    CMP r0, r1
    BEQ L
    SUB r2, r0, r1
    SWI 0x011
    L:
    ADD r2, r0, r1
.end