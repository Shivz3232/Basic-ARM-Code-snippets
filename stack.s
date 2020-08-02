.text
    MOV r0, #2
    MOV r1, #1
    STMFD r13, {r0, r1}
    LDMEA r13!, {r2, r3}
.end