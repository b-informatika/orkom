
org 100h

mov ah,02h		
mov dl,31h	

lagi:

   ulang:   int 21h			
            inc dl
            dec a
            mov cl, a 
            loop ulang
        
   mov dl, 0dh
   int 21h
   mov dl, 0ah
   int 21h
   mov dl, 31h
   dec b
   mov cl, b
   mov a, cl
   
loop lagi    

a db 10
b db 10
int 20h
