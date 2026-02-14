 .model small
.stack 100h
.data
msg1 db '2 + 5 = $'
msg2 db 0Dh,0Ah,'7 + 1 = $'
msg3 db 0Dh,0Ah,'3 + 6 = $'

.code
main proc
    mov ax, @data
    mov ds, ax

     
    mov dx, offset msg1
    mov ah, 09h
    int 21h

    mov al, 2
    add al, 5
    add al, 30h      
    mov dl, al
    mov ah, 02h
    int 21h

    
    mov dx, offset msg2
    mov ah, 09h
    int 21h

    mov al, 7
    add al, 1
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

     
    mov dx, offset msg3
    mov ah, 09h
    int 21h

    mov al, 3
    add al, 6
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
 