  .model small
.stack 100h
.data

.code
main proc

    mov ax, @data
    mov ds, ax

    mov cx, 26
    mov dl, 'A'     ; start from A

print_loop:
    push dx         

    mov ah, 2
    int 21h         

    ; newline
    mov dl, 0dh
    mov ah, 2
    int 21h

    mov dl, 0ah
    mov ah, 2
    int 21h

    pop dx        

    inc dl          ; next letter
    loop print_loop

    mov ah, 4ch
    int 21h

main endp
end main