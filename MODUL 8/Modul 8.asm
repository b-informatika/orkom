
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
              START: JMP MULAI

            KALIMAT     DB 'LABORATORIUM$'
                      
 MULAI:      	MOV AH,02
			MOV BX,0

LAB:		MOV DL,KALIMAT[BX]
			CMP DL,24H
			JE SELESAI
			INT 21H
			INC BX
			JMP LAB
SELESAI:	INT 20H

        

ret




