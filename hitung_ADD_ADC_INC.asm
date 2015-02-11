org 100h

proses:
    mov ah,15h   ; AH:=15h
    mov al,4     ; AL:=4
    add ah,al    ; AH:=AH+AL, jadi AH=19h
    
    mov ax,1234h ; nilai AX:=1234h dan carry=0
    mov bx,0F221h; nilai BX:=0F221H dan carry=0
    add ax,bx    ; AX:=AX+BX, jadu nilai AX=0455h
    
    mov ax,1234h ; AX = 1234h CF = 0
    mov bx,9ABCh ; BX = 9ABCh CF = 0
    mov cx,5678h ; cx = 5678h CF = 0
    mov dx,0DEF0h; DX = DEF0h CF = 0
    add cx,dx    ; CX = 3568h CF = 1
    adc ax,bx    ; AX = AX+BX+CF = ACF1
    
    inc al       ; AL:=AL+1, nilai pada AL ditambah 1
     
    int 20h
END proses    

ret




