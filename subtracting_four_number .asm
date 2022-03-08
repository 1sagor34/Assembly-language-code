.MODEL SMALL
.STACK 100H
.DATA

A DB ?
B DB ?

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1H
    INT 21H
    MOV BL,AL
    
    MOV AH,1H
    INT 21H
    MOV BH,AL
    
    MOV AH,1H
    INT 21H
    MOV CL,AL
    
    MOV AH,1H
    INT 21H
    MOV CH,AL  ;4TH INPUT
    
    SUB BL,BH
    ADD BL,30H
    MOV B,BL
    
    SUB B,CL
    ADD B,30H
    MOV BL,B
    
    SUB BL,CH
    ADD BL,30H
    MOV B,BL
    
    MOV AH,2H
    MOV DL,B
    INT 21H

    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



