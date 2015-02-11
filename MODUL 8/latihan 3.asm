
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



   ORG 100H

           JMP     START
PESAN DB 'STMIK BUMIGORA, SUKSES!', 0

START:
      	  MOV     SI, 0
LAGI:
   	 MOV     AL, PESAN[SI]
        	 CMP     AL, 0           
        	 JE      STOP
       	 MOV     AH, 0EH
       	 INT     10H
           INC     SI
           JMP     LAGI


STOP:  MOV AH, 0     
              INT 16H 




ret




                      