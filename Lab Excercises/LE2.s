// Name:  Neil Dandekar  |
// Class: CSCI 39        |
// Date:  02.10.2023     |
// _______________________

        AREA text, CODE, READONLY   // Program directives
        EXPORT main         // Execute main
main
        MOVS R1, #0xABC     // Store ABC (in hex) in R1
        MOV  R8, R1         // Copy the value of R1 into R8
        LDR  R3, 0x20000000 // Store 20000000 (greater than 32 bits - in hex) in R3

done    B done              // End program
        END