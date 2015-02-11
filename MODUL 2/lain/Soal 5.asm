

org 100h

mov ah,02h		

ulang1:
        
        mov dl,31h
        ulang2:
            mov cl,3 
            
            ulang3:  int 21h			
            loop ulang3
            
            add dl, 3
            dec a
            mov cl, a
        
        loop ulang2
            
        dec b
        mov cl, b
        mov a, cl
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
            
loop ulang1

a db 04
b db 04

int 20h



