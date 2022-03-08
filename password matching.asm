.model small
.stack 100h
.data
msg db 'Enter the password $',0ah,0dh,24h
msg1 db 0ah,0dh,'Password match $',0ah,0dh,24h
msg2 db 0ah,0dh,'Wrong password $',0ah,0dh,24h
msg3 db 'assembly$'
msg4 dw 8
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,msg4
    mov bx, offset msg3
    
    mov ah,9h
    lea dx,msg
    int 21h
    
    level1:
    mov ah,1h
    int 21h 
    cmp al,[bx]
    jne level2
    inc bx
    loop level1
    mov ah,9h
    lea dx,msg1
    int 21h
    jmp exit
    
    level2:
    mov ah,9h
    lea dx,msg2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
