 .model small
.stack 100h
.data

.code
main proc

    mov cx, 10      ; loop 10 times (9 to 0)
    mov dl, '9'     ; start from '9'

print_loop:
    mov ah, 2       ; print character
    int 21h

    dec dl          ; go to previous digit (9?8?7...)
    loop print_loop

    mov ah, 4ch
    int 21h

main endp
end main
