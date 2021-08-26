;assembly language program for subtraction of two 8 bit numbers
ASSUME CS:CODE DS:DATA
DATA SEGMENT			;beginning of data segment
OPR1 DB 04H			;define variable OPR1	
OPR2 DB 03H			;define variable OPR2
RESULT DB ?		;define variable RESULT 
DATA ENDS			;end of data segment
CODE SEGMENT 			;beginning of code segment
START:MOV AX,DATA 	
      MOV DS,AX       		;Initialize data segment
      MOV AL,OPR1		;get the operand1 into AL register
      MOV BL,OPR2		;get the operand2 into BL register
      CLC			;cclear carry flag if any
      SUB AL,BL                 ;Subtract AL<-- AL-BL
      MOV DI,OFFSET RESULT      ;load the address of the result into DI
      MOV [DI],AL		;store the result into memory loaction specified in DI
      MOV AH,4CH                ;load the dos function number 4c into AH register
      INT 21H                   ;invoke the dos function call 4c , return to dos
CODE ENDS			;end of the code segment
END START			;end of the program