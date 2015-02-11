org 100h
mov cx,09h
mov dl,'A'
mov ah,02
lagi:   int 21h
        add dl,3
        loop lagi
int 20h