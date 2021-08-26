;assembly language program for addition
;ALP for adding two 8 bit numbers
ASSUME CS:CODE DS:DATA

DATA SEGMENT           ;begining of data segment
OPR1 DB 02H            ;operand 1
OPR2 DB 03H            ;operand 2
RESULT DB ?    		   ;a byte of memory reserved for result
DATA ENDS

CODE SEGMENT             ;begining of code segment
START:
MOV AX,DATA         ;initiate data segment
MOV DS,AX       
MOV AL,OPR1
MOV BL,OPR2
CLC
ADD AL,BL              ;AL<--AL+BL
MOV DI,OFFSET RESULT   ;LEA DI,RESULT  2000
MOV [DI],AL
MOV AH,4CH
INT 21H
CODE ENDS
END START
masm add.asm
