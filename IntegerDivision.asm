// IntegerDivision.asm
// Compute the integer quotient and remainder of an integer division
// Let x and y be the values initially stored in R0 and R1, respectively
// Let m and q be integers that satisfy x = y * m + q, with q < y
// The registers R2 and R3 must store the values m and q, respectively
// The register R4 is a flag, which must be set to 1 if the division is invalid, and to 0 otherwise
// The code must not modify the values initially stored in R0 and R1

// Initialize the flag to 0 (valid division)
@R4
M=0

// Check if y is 0 (division by 0 is invalid)
@R1
D=M
@INVALID
JEQ // jump to INVALID if y == 0

// Initialize the quotient (m) and remainder (q)
@R2
M=0 // m = 0
@R3
M=0 // q = 0

// Perform the division
(LOOP)
    // Check if x < y
    @R0
    D=M
    @R1
    D=D-M
    @END
    JLT // jump to END if x < y

    // Subtract y from x
    @R0
    D=M
    @R1
    D=D-M
    @R0
    M=D // x = x - y

    // Increment the quotient
    @R2
    M=M+1 // m = m + 1

    // Check if the remainder is less than y
    @R0
    D=M
    @R1
    D=D-M
    @LOOP
    JGE // jump to LOOP if x >= y
    @END
    0;JMP // jump to END

(INVALID)
    @R4
    M=1
    @END
    0;JMP

(END)
    @R2
    D=M
    @R3
    M=D // q = m
    @END
    0;JMP
