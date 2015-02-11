
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ORG 100H
            START: JMP MULAI

            KAL   DB 'BUMIGORA STMIK',13,10
                  DB '$'
                      
 
             MULAI:       XOR BX,BX
			        MOV CX,15

	ULANG:		MOV DL,KAL [BX]
				MOV AH,02
				INT 21H
				INC BX
				LOOP ULANG
				INT 20H

        

ret




