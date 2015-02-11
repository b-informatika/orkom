org 100h
mov cx,09h
mov ah,02h
mov al,09h

ulang:  push cx
        mov cx,cx
                
        mov dl,'1'
        lagi:   int 21h
                inc dl
                loop lagi 
                sub cx,1
                mov dl,0dh
                int 21h
                mov dl,0ah
                int 21h
                
                mov al,dl
                pop cx
        loop ulang
        int 20h
        ret
                