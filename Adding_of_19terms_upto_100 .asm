.model small
.stack 100h
.code
main proc
     mov cx, 19
     mov ax,100
     mov bx,100
     label:
      add ax,bx
      sub bx,5
      loop label
       
      mov ah,2
      mov dx,ax
      int 21h
      exit:
      mov ah,4ch
      int 21h
      main endp
end main



