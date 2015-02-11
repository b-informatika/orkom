
org 100h

mov ah,02h		
mov cx,09h		
mov dl,39h		

ulang:  int 21h			
        dec dl
        loop ulang     


int 20h			; akhiri program
