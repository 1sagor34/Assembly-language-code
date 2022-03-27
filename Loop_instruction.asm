.model small
.stack 100h
.data
msg1 db "Enter a number: ",0ah,0dh,24h
msg db 0ah,0dh,"Thank you",0ah,0dh,24h
.code
main proc 
    mov ax,@data
    mov ds,ax
    
   mov ah,9
   lea dx,msg1
   int 21h
   
   mov ah,1
   int 21h
   mov bl,al
   
   mov ah,2h
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov cx,49
   mov ah,2h
   mov dl, 'D'
   int 21h 

   
   mov ah,2h
   mov dl, bl
   int 21h
   
   Top:
   int 21h
   loop Top
   
   mov ah,9h
    
   lea dx,msg
   int 21h
   
   mov ah,4ch
   int 21h
   main endp
end main


