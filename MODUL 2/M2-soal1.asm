org 100h
mov cx,09h
mov dl,'9'
mov ah,02
ulang:  int 21h
        dec dl
        loop ulang   
        
int 20h