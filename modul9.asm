org 100h

start: jmp mulai

tekan_enter equ 0EH
kal0 db 'Ketikkan suatu kalimat: $'
kal1 db 13,10,'Kalimat pada buffer: $'
buffer db 15,?,15 DUP(?)

mulai:
  mov ah,09
  lea dx,kal0
  int 21h
   
  mov ah,0ah
  lea dx,buffer
  int 21h
   
  mov ah,09
  lea dx,kal1
  int 21h
  
  lea bx,buffer+15
ulang:
  cmp byte ptr[bx],tekan_enter
  je keluar     
  mov dl,[bx]
  mov ah,02
  int 21h
  dec bx
  jmp ulang
  
keluar: int 20h        

ret