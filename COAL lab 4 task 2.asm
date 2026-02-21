     ORG 100h        


MOV AH, 0Eh

MOV AL, 'M'
INT 10h
MOV AL, 'e'
INT 10h
MOV AL, 'h'
INT 10h
MOV AL, 'a'
INT 10h
MOV AL, 'k'
INT 10h
MOV AL, ' '
INT 10h
MOV AL, 'J'
INT 10h
MOV AL, 'a'
INT 10h
MOV AL, 'm'
INT 10h
MOV AL, 'i'
INT 10h
MOV AL, 'l'
INT 10h


MOV AL, 0Dh
INT 10h
MOV AL, 0Ah
INT 10h


MOV AL, 'S'
INT 10h
MOV AL, 'A'
INT 10h
MOV AL, 'P'
INT 10h
MOV AL, ' '
INT 10h
MOV AL, 'I'
INT 10h
MOV AL, 'D'
INT 10h
MOV AL, ':'
INT 10h
MOV AL, ' '
INT 10h
MOV AL, '6'
INT 10h
MOV AL, '8'
INT 10h
MOV AL, '6'
INT 10h
MOV AL, '2'
INT 10h
MOV AL, '5'
INT 10h

end main

