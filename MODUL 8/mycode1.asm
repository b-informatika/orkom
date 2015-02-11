
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,02h     
mov cx,05h     
mov dl,41h
	ulang: 	int 21h            
		mov bl,dl       
		mov dl,20h     
		int 21h
		mov dl,bl       
		inc dl             
			loop ulang
	mov dl,0dh
	int 21h
	mov dl,0ah
	int 21h
mov cx,05h
mov dl,31h
ulang1: int 21h
        mov bl,dl 
        mov dl,20h
        int 21h
        mov dl,bl
        add dl,02h
        	loop ulang1
        
int 20h

ret




