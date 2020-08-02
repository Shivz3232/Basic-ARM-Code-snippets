.text
    MOV r1, #2
    MOV r2, #3
    ADD r0, r1, #4
    LDMIA  R13!  , {  R0, R5 - R8, R11}
.end