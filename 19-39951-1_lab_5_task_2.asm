
name "EX-01"
org 100h

jmp start ; jump over data declaration 



msg1: db "Hello, World!", 0Dh,0Ah, 24h

msg2: db "Bye World!", 0Dh,0Ah, 24h

Key DB 5h

comp:
      cmp key,0h
      Je close 
      jne start

start: mov dx, msg1 ; load offset of msg into dx.


 mov ah, 09h ; print function is 9.

 int 21h ; do it!
 
 Dec Key;
 
 jmp comp


close: mov dx, msg2 ; load offset of msg into dx.


 mov ah, 09h ; print function is 9.

 int 21h ; do it! 



ret


