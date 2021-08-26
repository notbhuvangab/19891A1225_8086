;Assembly Language Program of 8086 for subtraction of two 8bit numbers

ASSUME CS:CODE DS:DATA

DATA SEGMENT				;beginning of data segment
OPR1 DB 08H					;operand 1
OPR2 DB 05H					;operand 2
RESULT DW ?					;two bytes of memory reserved for result
DATA ENDS	

CODE SEGMENT 				;beginning of code segment

START:
	MOV AX,DATA  			;initiate data segment
	MOV DS,AX
	MOV AL,OPR1
	MOV BL,OPR2
	CLC
	SUB AL,BL				;AL<--AL-BL
	MOV DI,OFFSET RESULT 	;LEA DI,RESULT 2000
	MOV [DI],AL
	MOV AH,4CH
	INT 21H
CODE ENDS
END START

