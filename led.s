.text
        MOV r0, #0
        LOOP:
                SWI 0x201
                ADD r0, r0, #1
                MOV r4, #64000
                DELAY:
                        SUB r4, r4, #1
                        CMP r4, #0
                        BNE DELAY
        CMP r0, #3
        BLE LOOP
.end
