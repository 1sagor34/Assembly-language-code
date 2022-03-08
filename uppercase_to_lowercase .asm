.model small
.stack 100h
.data 
msg db 'Give a input capital letter $'
msg1 db 'Small letter of the input $'
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
    
    mov ah,2h
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,9h
    lea dx,msg1
    int 21h
    
    add bl,20h
    mov ah,2h
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main


