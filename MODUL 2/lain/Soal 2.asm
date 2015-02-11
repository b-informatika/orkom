
org 100h


mov ah,02h		
mov cx,08h

a db 41h
mov dl,a	

ulang:  int 21h			
        add a, 3
        mov dl, 0d
        int 21h
        mov dl, a                
        loop ulang     

int 20h	
