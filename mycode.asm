; Nama  : AHMAD MUHAR DIAN LASMITA
; NIM   : 1210520098

org 100h

mov ah,02h
mov cx,09h ;looping 9x ke bawah

awal: 
    mov bx,cx   ;pidahkan nilai looping
    mov dl,'A'  ;isi dl dengan 'A'

    jmp proses  ;lompat ke proses

baru: 
    proses:
        mov cx,03h  ;isi CX=3, looping 3x

    cetak: 
        int 21h     ;cetak karakter 3x
        loop cetak 
    
        inc dl      ;dl+1
        cmp dl,'K'  ;compare DL
        jne baru    ;jika dl!='K' lompat ke baru
         
        ;jika dl=='K' jalankna sintak berikut
        mov dl,0ah  ; 
        int 21h     ; NEW LINE
        mov dl,0dh  ; --------
        int 21h     ;

        mov cx,bx   ;isi cx dengan nilai yang disimpan td
                    ;di Register bx
        loop awal   ;lompat ke awal
    
int 20h  ;intrup 20h untuk mengakhiri program

ret




