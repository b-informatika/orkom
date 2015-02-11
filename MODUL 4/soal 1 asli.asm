
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,02h
mov cx,09h
lagi: 
mov bx,cx
mov dl,'A'

jmp proses
baru: 
proses:mov cx,03h
ulang: 
int 21h
loop ulang 
inc dl
cmp dl,'J'
jle baru
         

mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov cx,bx
loop lagi
int 20h

ret




