org 100h
start:
    jmp mulai    
kata DB 'Masukan Password anda sekarang',13,10
     DB 'Password: $'               
pesan1 DB 13,10,'Password anda dinyatakan benar',13,10
pesan2 DB 13,10,'Passord salah!',13,10
mulai:
    mov ah,09h
    mov dx,offset kata
    int 21h    
tanya:
    mov ah,01h
    int 21h 
    CMP al,'STMIK'
    JE benar
    CMP al,'stmik'
    JE benar  
    JNE salah    
benar:
    mov ah,09h
    mov dx,offset pesan1
    int 21h
    jmp selesai
salah:
    mov ah,09h
    mov dx,offset pesan2
    int 21h
    jmp selesai
selesai: int 20h 

ret




