;assembly language program for multiplication
ASSUME CS:CODE DS:DATA
DATA SEGMENT
OPR1 DB 02H
OPR2 DB 03H
RESULT DB 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:MOV AX,DATA 
      MOV DS,AX       
      MOV AL,OPR1
      MOV BL,OPR2
      MUL BL
      MOV DI,OFFSET RESULT
      MOV [DI],AL
      MOV AH,4CH
      INT 21H
CODE ENDS
END START