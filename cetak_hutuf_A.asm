;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;   PROGRAM: A0.ASM            ;
;   FUNGSI : Mencetak karakter ;
;            'A' dengan int 21 ;
;______________________________;

.MODEL SMALL
.CODE
org 100h

proses:
    mov AH,02h ;nilai servis utk mencetak karakter
    mov DL,41h ;DL = Karakter ASCII yg akan dicetak

    int 21h    ;Cetak akarakter!!

    int 20h    ;Selesai ! Kembali ke DOS

END proses
ret




