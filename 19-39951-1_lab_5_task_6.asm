.MODEL SMALL
.STACK 100H
.DATA

M1  DB  'd',0DH,0AH,'$'								;This line instructs that need to print Maria
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

MOV CX,50 												;The name 'd ' will print for 10 times

PRINT_LOOP:

MOV AH,9
LEA DX,M1
INT 21H
DEC CX

JNZ PRINT_LOOP

MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN