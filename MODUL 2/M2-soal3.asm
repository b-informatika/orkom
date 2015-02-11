org 100h
mov cx,04h
mov ah,02

ulang:  push cx
        mov dl,'1'
        mov cx,09h
        lagi:   int 21h
                inc dl
                loop lagi
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        pop cx
        loop ulang
        int 20h
ret
