.model small
.stack 100h
.data
a db 'My assembly language $'
b db 'My programming strategy $'
c db 'My code exit $'
.code
main proc
    mov ax,@data
    mov ds,ax

    mov ah,9h
    lea dx,a
    int 21h
    
    mov ah,2h
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    jmp m
    
    m:
    mov ah,9h
    lea dx,b
    int 21h
    
    mov ah,2h
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    jmp n
    
    n:
    mov ah,9h
    lea dx,c
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    

