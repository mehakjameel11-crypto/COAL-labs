  org 100h

mov ax,5
mov bx,4

mul bx         

mov bl,10
div bl         

add al,30h
mov dl,al
mov ah,02h
int 21h        

mov al,ah
add al,30h
mov dl,al
mov ah,02h
int 21h        

mov ah,4ch
int 21h
