
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,02h		
mov dl,41h		
int 21h
mov dl,42h
int 21h
mov dl,43h
int 21h	
mov dl,0dh
int 21h
mov dl,0Ah
int 21h
mov dl,41h		
int 21h
mov dl,42h
int 21h
mov dl,43h
int 21h			
int 20h	


ret




