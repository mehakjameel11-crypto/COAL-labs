 org 100h

mov ax,25     
mov bl,10     

div bl       


add al,30h
mov dl,al
mov ah,02h
int 21h


mov dl,' '
mov ah,02h
int 21h


add ah,30h
mov dl,ah
mov ah,02h
int 21h


mov ah,4Ch
int 21h