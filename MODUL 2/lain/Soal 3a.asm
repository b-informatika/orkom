
org 100h

mov ah,02h		
mov cl, 09
	
lagi:
    mov cl, 09
    ulang:  mov dl,a
            int 21h			
            inc a
            mov dl, 0d
            int 21h
            loop ulang
            
        mov a,31h    
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
        mov dl, 31h
        dec b
        mov cl, b
        
         
    loop lagi    

a db 31h
b db 05
int 20h	
