.model small
.stack 100h

.data

.code
main proc
    mov ax, @data
    mov ds, ax

    mov bx, 1      

outer_loop:

    mov cx, 5       
    mov si, 1       

inner_loop:

    mov ax, bx
    mul si           

    mov dl, al
    add dl, 30h     
    mov ah, 02h
    int 21h

    mov dl, ' '
    mov ah, 02h
    int 21h

    inc si
    loop inner_loop

    ; new line
    mov dl, 0Dh
    mov ah, 02h
    int 21h
    mov dl, 0Ah
    int 21h

    inc bx
    cmp bx, 6
    jne outer_loop

    mov ah, 4Ch
    int 21h

main endp
end main
