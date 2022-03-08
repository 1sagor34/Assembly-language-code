.model small
.stack 100h
.data
msg db 'First input $',0ah,0dh,24h
msg1 db 0ah,0dh,'Second input $' ,0ah,0dh,24h
msg2 db 0ah,0dh,'Largest number $' ,0ah,0dh,24h
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9h
    lea dx,msg
    int 21h
    
    mov ah,1h
    int 21h
    mov bl,al
    
    mov ah,9h
    lea dx,msg1
    int 21h
    
    mov ah,1h
    int 21h
    mov bh,al
    
    Biggest:
    cmp bl,bh
    jg level1
    jmp level2
    
    Level1:
    
    mov ah,9h
    lea dx,msg2
    int 21h
    
    mov ah,2h
    mov dl,bl
    int 21h
    jmp exit
     
    level2:
    
    mov ah,9h
    lea dx,msg2
    int 21h
    
    mov ah,2h
    mov dl,bh
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
