// Name:  Neil Dandekar  |
// Class: CSCI 39        |
// Date:  02.24.2023     |
// _______________________

        AREA text, CODE, READONLY ;Program directives
        EXPORT main               ;Execute main
main
        // EXPRESSION 1:
        ;a - b + (c + 32)
        MOVS R0, #100    ;a = 100
        MOVS R1, #5      ;b = 5
        MOVS R2, #2      ;c = 2

        ADDS R2, R2, #32 ;c + 32 
        SUBS R0, R0, R1  ;a - b
        ADDS R0, R0, R2  ;(a - b) + (c + 32)

        // EXPRESSION 2:
        ;a + 1 + b * 4 - 6 + c
        MOVS R0, #100   ;a = 100
        MOVS R1, #5     ;b = 5
        MOVS R2, #2     ;c = 2

        LSLS R1, #2     ;b * 4
        ADDS R0, R0, #1 ;a + 1
        ADDS R0, R0, R1 ;(a + 1) + (b * 4)
        SUBS R0, R0, #6 ;[(a + 1) + (b * 4)] - 6
        ADDS R0, R0, R2 ;[[(a + 1) + (b * 4)] - 6] + c

        // EXPRESSION 3:
        ;a - c + a / 8 + b
        MOVS R0, #100   ;a = 100
        MOVS R1, #5     ;b = 5
        MOVS R2, #2     ;c = 2

        SUBS R2, R0, R2 ;a - c
        LRLS R0, #3     ;a / 8
        ADDS R0, R2, R0 ;(a - c) + (a / 8)
        ADDS R0, R0, R1 ;[(a - c) + (a / 8)] + b

done    B done          ;End program
        END