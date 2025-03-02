

@R0   
D=M   
@sum  
M=0   

@R1   
D=M   
(LOOP)
@i    
M=0   
@STOP 
D;JEQ 
@R0   
A=M   
D=M   
@sum  
M=D+M 
@R0   
M=M+1 
@i    
M=M+1 
@LOOP
0;JMP 

(STOP)
@sum  
D=M   
@R2   
M=D   
(END)
@END
0;JMP 
