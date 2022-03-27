.model small
.stack 100h
.data
msg1 db 0ah,0dh, "Thank you$" 
.code
main proc  
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,'?'
    int 21h

    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bl,bh
    jg level1
    
    level1:
    xchg bl,bh
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    exit:
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main


