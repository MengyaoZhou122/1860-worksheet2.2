
@R1
M=0

@R0
D=M
@NEGATIVE
JLT 

@1
D=A 
@i
M=D 

(LOOP)
    @i
    D=M
    D=D+D 
    @R1
    M=M+D 

    @i
    M=M+1 

    @R0
    D=M
    @i
    D=D-M
    @LOOP_END
    JLT 
    @LOOP
    0;JMP 

(LOOP_END)
    @END
    0;JMP

(NEGATIVE)
    @R1
    M=-1
    @END
    0;JMP

(OVERFLOW)
    @R1
    M=-2
    @END
    0;JMP

(END)
    @END
    0;JMP
