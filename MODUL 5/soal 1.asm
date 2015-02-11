
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,02h
mov cx,06h
mov dl,31h
ulg:  
int 21h 
inc dl 
push cx
push dx
mov cx,1ah
mov dl,61h
lagi:
int 21h
inc dl 
loop lagi
mov dl, 0dh
int 21h
mov dl,0ah
int 21h
pop dx
pop cx  
loop ulg
int 20h

ret




