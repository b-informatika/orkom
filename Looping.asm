;--------------------------------------;
;   PROGRAM : Looping                  ;
;   FUNGSI  : Mencetak 16 buah karakter;
;             dgn INT 21h servis 02    ;
;--------------------------------------;
.MODEL SMALL
.CODE
org 100h

proses:
    mov ah,02h ; nilai servis
    mov dl,'A' ; DL=karakter 'A' atau DL=41h
    mov cx,10h ; counter atau banyaknya pengulangan
ulang:
    int 21h    ; cetak karakter!!
    inc dl     ; tambah DL dengan 1
    LOOP ulang ; Lompat ke ulang
    
    int 20h
END proses

ret