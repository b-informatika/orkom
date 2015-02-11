

org 100h

awal:   jmp     mulai
        wrt_1   DB  '99997777555533331111',13,10,'$'
        

mulai:
        mov     Ah,9
        mov     cx, 04
        
        lagi:
            Mov     Dx, offset wrt_1
            int 21h
            loop lagi

int 20h





