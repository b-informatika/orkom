;=======================================;
;   PROGRAM : CETAK_ATTRB.ASM           ;
;   FUNGSI  : MENCETAK KARAKTER 'A'     ;
;             BESERTA ATTRIBUTNYA       ;
;             DENGAN INT 10h            ;
;=================================PARGO=;

.MODEL SMALL
.CODE

org 100h

proses:
    mov ah,09h ; Nilai servis untuk mencetak karakter
    mov al,'A' ; AL= Karakter yg akan dicetak
    mov bh,00h ; Nomor halaman layar
    mov bl,2Fh ; Warna atau attribut dari karakter
    mov cx,03h ; Banyak karakter yg ingin dicetak
    
    int 10h    ; Laksanakan!
    int 20h    ; Selesai
    
END proses    
ret




