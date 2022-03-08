.model small
.stack 100h
.data

a db ?
b db ?

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1h
    int 21h
    mov bl,al
    
    mov ah,1h
    int 21h
    mov bh,al
    
    mov ah,1h
    int 21h
    mov cl,al
    
    mov ah,1h
    int 21h
    mov ch,al  ;4th input
    
    add bl,bh
    sub bl,30h
    mov b,bl
    
    add b,cl
    sub b,30h
    mov bl,b
    
    add bl,ch
    sub bl,30h
    mov b,bl
    
    mov ah,2h
    mov dl,b
    int 21h

    exit: 
    mov ah,4ch
    int 21h
    main endp
end main



