org 100h
mov cx,03h
mov ah,02h

ulang:  push cx
        mov cx,cx
                
        mov dl,'1'
        lagi:   int 21h
                int 21h
                int 21h
                add dl,3
                loop lagi 
                sub cx,1
                mov dl,0dh
                int 21h
                mov dl,0ah
                int 21h
                
                pop cx
        loop ulang
        int 20h
        ret
                