;nama : Ahmad Muhar Dian Lasmita
;NIM  : 1210520098
org 100h

mov ah,02h ;mengisi ah=02h
mov dl,41h ;mengisi dl=41h (A)
int 21h    ;mencetak karakter A 3x
int 21h
int 21h

mov dl,42h ;mengisi dl=42h (B)
int 21h    ;mencetak karakter B 3x
int 21h
int 21h


mov dl,43h ;mengisi dl=43h (C)  
int 21h    ;mencetak karaketer C 3x
int 21h
int 21h 

mov dl,0dh ;megisi dl=0dh (cret)
int 21h    ;mencetak cret

mov dl,0ah ;mengisi dl=0ah (New Line)
int 21h    ;mencetak New Line

mov dl,41h ;mengisi dl=41h (A)
int 21h    ;mencetak karakter A 3x
int 21h
int 21h

mov dl,42h ;mengisi dl=42h (B)
int 21h    ;mencetak karakter B 3x
int 21h
int 21h


mov dl,43h ;mengisi dl=43h (C)  
int 21h    ;mencetak karaketer C 3x
int 21h
int 21h

ret




