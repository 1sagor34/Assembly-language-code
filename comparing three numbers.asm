.model small
.stack 100h
.data
msg db 'Input the first number $',0ah,0dh,24h
msg1 db 0ah,0dh, 'Input the second number $',0ah,0dh,24h
msg2 db 0ah,0dh, 'Input the Third number $',0ah,0dh,24h
msg3 db 0ah,0dh, 'Largest number $',0ah,0dh,24h 
.code
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
    
    cmp bl,bh
    jge a
    
    b: 
  
    cmp bh,cl
    jge c
    mov ah,2h
    mov dl,cl
    int 21h 
    jmp exit
      
    c:
    
    mov ah,2h
    mov dl,bh
    int 21h 
    jmp exit
    
    a: 
    cmp bl,cl
    jge d
    mov ah,2h
    mov dl,cl
    int 21h
    jmp exit
      
    d:

    
    mov ah,2h
    mov dl,bl
    int 21h
     
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
