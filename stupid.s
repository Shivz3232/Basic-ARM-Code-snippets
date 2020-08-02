.text
    LDR r0, =a
    LDR r1, [r0]
    LDR r2, =b
    LDR r3, [r2]
    MLA r5, r4, r1, r3
.data
    a: .word 5678
    b: .word 1234
.end