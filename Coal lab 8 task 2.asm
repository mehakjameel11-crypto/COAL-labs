   .model small
.stack 100h
.data

.code
main proc

    mov cx, 5       ; 5 times print karna hai

print_loop:
    mov dl, '*'     ; '*' load karo
    mov ah, 2       ; print function
    int 21h

    loop print_loop ; repeat 5 times

    mov ah, 4ch
    int 21h

main endp
end main
