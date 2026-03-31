  .model small
.stack 100h
.data

.code
main proc

    mov ax, @data
    mov ds, ax

    mov cx, 5        ; counter = 5

printA:
    mov dl, 'A'      ; letter A
    mov ah, 2
    int 21h          ; print A

    loop printA     

    mov ah, 4ch
    int 21h

main endp
end main
