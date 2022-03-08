.model small
.stack 100h
.data
b db 08h
c db 02h
.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov bl,b
    mov cl,c
    
    sub bl,cl
    add bl,30h
    
    mov ah,02h
    mov dl,bl
    int 21h
    main endp
   
end main




