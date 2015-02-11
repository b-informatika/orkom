;Nama : Ahmad Muhar Dian Lasmita
;NIM  : 1210520098
org 100h

start: JMP mulai
kal DB 'BUMIGORA'

mulai:
    LEA BX,kal
    ADD BX,8
    MOV CX,4
    
    ulang:
        MOV DL,[BX]
        MOV AH,02H
        INT 21H
        DEC BX
        LOOP ulang
        CMP BX,108h
        JB stop ;Lompat jika 108H<BX
        
        SUB BX,8
        MOV CX,4
        JMP ulang
    stop:
        INT 20H

ret




