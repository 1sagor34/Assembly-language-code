.model
.stack 100h
.data
msg1 db "The sample output of all ASCII characters are:$"
.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov cx,255
    
    mov ah,2
    mov dl,0
    
    PrintASCII:
               int 21h
               
               inc dl
               dec cx
               jnz PrintASCII
               
     Exit:
          mov ah,4ch
          int 21h
          main endp 
end main



