    org 100h

mov al,3    
mov bl,al
mul bl        
mul bl        
mov bl,10
div bl       

add al,30h
mov dl,al
mov ah,02h
int 21h


mov dl,ah
add dl,30h
mov ah,02h
int 21h
mov ah,4Ch
int 21h