;===================================;
;   Nama: Ahmad Muhar Dian Lasmita  ;
;   NIM : 1210520098                ;
;===================================;
org 100h
mov cx,9        ;isi cx=09
mov bh,01h      ;isi bh=01h
ulang:
    mov dl,bh   ;isi dl=bh
    add dl,30h  ;tambah dl 01+30 = 31h
    mov ah,02h  ;isi ah = 02h
    int 21h     ;cetak isi dl (31h ='1')

    mov dl,2ah                 
    int 21h     ;cetak *
    mov dl,31h  
    int 21h     ;cetak 1
    mov dl,3dh
    int 21h     ;cetak =

    mov al,01h  ;isi al=01
    mul bh      ;kali bh 
    mov dl,30h  ;isi dl = 0
    add dl,al   ;tambah dl=+al
    mov ah,02h
    int 21h     ;cetak isi dl

    mov dl,0ah  ;
    int 21h     ; NEW LINE
    mov dl,0dh  ;
    int 21h     ;    
    
    inc bh      ;tabh bh 1
loop ulang
int 20h         ;STOP program
ret