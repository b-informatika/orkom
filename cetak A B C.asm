
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,02h ;mengisi ah=02h
mov dl,41h ;mengisi dl=41h (A)

int 21h    ;mencetak karakter A

mov dl,20h ;mengisi dl=20h (spasi)
int 21h    ;mencetak spasi

mov dl,42h ;mengisi dl=42h (B)
int 21h    ;mencetak karakter B

mov dl,20h ;mengisi dl=21h
int 21h    ;mencetak spasi

mov dl,43h ;mengisi dl=43h (C)
int 21h    ;mencetak karaketer C

ret




