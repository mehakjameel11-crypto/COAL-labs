    ORG 100h

MOV AL, 25       
MOV BL, 10       

ADD AL, BL       


MOV AH, 0        
MOV BX, 10
DIV BL           

ADD AL, 30h     
MOV DL, AL
MOV AH, 02h
INT 21h        

ADD AH, 30h     
MOV DL, AH
MOV AH, 02h
INT 21h          

INT 20h           