
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx,9
mov bh,01h
ulang: mov dl,bh
add dl,30h
mov ah,02h
int 21h

mov dl,2ah
int 21h
mov dl,31h
int 21h
mov dl,3dh
int 21h

mov al,01h
mul bh
mov dl,30h
add dl,al
mov ah,02h
int 21h

mov dl,0ah
int 21h
inc bh
loop ulang
mov dl,0dh
int 21h

mov dl,0ah
int 21h


mov cx,9
mov bh,01h

ulang1: mov dl,bh
add dl,31h

mov dl,0ah
int 21
inc bh
loop ulang1
mov dl,0dh
int 21h

mov dl,0ah
int 21h
; add your code here

ret




