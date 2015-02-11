cetak_kal macro kal
  lea dx,kal
  mov ah,09
  int 21h
  endm
cetak macro karakter
  mov ah,02
  lea dl,karakter
  int 21h
  endm
spasi macro
  mov ah,02
  mov dl,20h
  int 21h
  endm
;---------- Program Utama ----------;
org 100h
start: jmp mulai
tekan_enter equ 0DH
kal0 db 'Ketikkan suatu kalimat: $'
kal1 db 13,10,'Kalimat pada buffer: $'
buffer db 15,?,15 DUP(?)

mulai:
  cetak_kal kal0
  mov ah,0ah
  lea dx,buffer
  int 21h
  cetak_kal kal1
  lea bx,buffer+8

ulang:
  cmp byte ptr[bx],tekan_enter
  je kurang
  mov dl,[bx]
  cetak dl
  inc bx
  jmp ulang

kurang:
  spasi
  sub bx,14
stmik:
  cmp byte ptr[bx],20h
  je keluar
  mov dl,[bx]
  cetak dl
  inc bx
  loop stmik

keluar: int 20h
ret