    .model small
.stack 100h
.data

.code
main proc

    mov ax, @data
    mov ds, ax

    mov cx, 5
    mov dl, '0'     ; start from 0

print_loop:
    mov ah, 2
    int 21h         ; print number

    add dl, 2       

    loop print_loop

    mov ah, 4ch
    int 21h

main endp
end main