// Name:  Neil Dandekar  |
// Class: CSCI 39        |
// Date:  02.24.2023     |
// _______________________

        AREA text, CODE, READONLY ;Program directives
        EXPORT main               ;Execute main
main
        // EXPRESSION 1:
        ;a + b - c + 1
        MOVS R0, #20    ;a = 20
        MOVS R1, #15    ;b = 15
        MOVS R2, #10    ;c = 10
        MOVS R3, #5     ;d = 5

        ADDS R0, R0, R1 ;a + b 
        SUBS R0, R0, R2 ;(a + b) - c
        ADDS R0, R0, #1 ;[(a + b) - c] + 1

        // EXPRESSION 2:
        ;a * 4 + b - d * 2
        MOVS R0, #20    ;a = 20
        MOVS R1, #15    ;b = 15
        MOVS R2, #10    ;c = 10
        MOVS R3, #5     ;d = 5

        LSLS R0, #2     ;a * 4
        ADDS R0, R0, R1 ;(a * 4) + b
        LSLS R3, #1     ;d * 2
        SUBS R0, R0, R3 ;[(a * 4) + b] - (d * 2)

done    B done          ;End program
        END