
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



   ORG 100H

           START: JMP MULAI

            KAL   DB 'STMIK BUMIGORA'
                      
 
             MULAI:       XOR BX,BX
			        MOV CX,14

	ULANG:		MOV DL,KAL [BX]
				MOV AH,02h
				INT 21H
				INC BX
				LOOP ULANG
				INT 20H


ret




                      