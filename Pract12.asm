;taking input of 2 two numbers and adding them
.model small
.stack 100h
.data
msg db 'Enter the first number ' ,0ah,0dh,24h
msg1 db 0ah,0dh,'Enter the second number ',0ah,0dh,24h
msg2 db 0ah,0dh,'Result '  ,0ah,0dh,24h
.code
main proc
    mov ax,@data
    mov ds,ax
     
    msgshow:
    mov ah,9h
    lea dx,msg
    int 21h
     
    integervalueinput:
    mov ah,1h
    int 21h
    mov bl,al
    
    
    
    msg1show:
    mov ah,9h
    lea dx,msg1
    int 21h
    
    secondintegervalueinput:
    mov ah,1h
    int 21h
    mov bh,al
      
   
    
    msg2show:
    mov ah,9h
    lea dx,msg2
    int 21h
    
     
    
    resultprint:
    add bl,bh ; adding bl and bh and store in bl register
    sub bl,30h
    
    mov ah,2h
    mov dl,bl
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    


