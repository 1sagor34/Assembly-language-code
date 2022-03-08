.model small
.stack 100h
.data
msg db 'Input the ascending order character $',0ah,0dh,24h
msg1 db 0ah,0dh,'The decending order $',0ah,0dh,24h
msg2 db 0ah,0dh,'Input the ascending order character $',0ah,0dh,24h
msg3 db 0ah,0dh,'The decending order using exchange keyword $',0ah,0dh,24h
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
    int 21h
    mov bh,al
    int 21h
    mov cl,al

    mov ah,9h
    lea dx,msg1
    int 21h
    
    mov ah,2h
    mov dl,cl
    int 21h
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h 
    
    ;xchg use
    
    mov ah,9h
    lea dx,msg2
    int 21h
    
    mov ah,1h
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    mov ah,9h
    lea dx,msg3
    int 21h 
    
    xchg bl,bh
    mov ah,2h
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main