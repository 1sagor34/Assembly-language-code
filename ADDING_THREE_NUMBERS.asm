.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'ENTER THE FIRST NUMBER $'
MSG1 DB 'ENTER THE SECOND NUMBER $'
MSG2 DB 'ENTER THE THIRD NUMBER $'
MSG3 DB 'THE RESULT $'
MSG4 DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,MSG
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV BL,AL
     
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9H
    LEA DX,MSG1
    INT 21H
     
    MOV AH,1H
    INT 21H
    MOV BH,AL
     
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H

    MOV AH,9H
    LEA DX,MSG2
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV CL,AL
     
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9H
    LEA DX,MSG3
    INT 21H
    
    ADD BL,BH
    SUB BL,30H
    MOV CH,BL
    ADD CH,CL
    SUB CH,30H
    MOV MSG4,CH
    MOV AH,2H
    MOV DL,MSG4
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN