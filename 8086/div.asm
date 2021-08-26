;assembly language program for division
ASSUME CS:CODE DS:DATA
DATA SEGMENT
A DW 0004H
B DB 02H
Q DB ?
R DB ?
DATA ENDS
CODE SEGMENT
START:MOV AX,DATA 
      MOV DS,AX       
      MOV AX,A
      MOV BL,B
      DIV BL            ;remainder in AH, quoitent in AL
      LEA DI,Q		;get the offsetaddress of Q
      MOV [DI],AL	;load the quotient into Q memory location
      LEA DI,R		;get the offsetaddress of R
      MOV [DI],AH
      MOV AH,4CH
      INT 21H
CODE ENDS
END START