.MODEL SMALL
.STACK 100H
.DATA
MSG DB 45H
MSG1 DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    ADD MSG,28H
    MOV DL, MSG
    INT 21H     
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV MSG1,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,2
    MOV DL,MSG1
    INT 21H 
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
