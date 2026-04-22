 .model small
.stack 100h

.data
    msg db "Enter 5 numbers: $"
    res db 0Dh,0Ah,"Even count: $"
    count db 0

.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ah, 09h
    lea dx, msg
    int 21h

    mov cx, 5

again:
    mov ah, 01h
    int 21h
    sub al, 30h

    and al, 1
    jnz skip
    inc count

skip:
    loop again

    
    mov ah, 09h
    lea dx, res
    int 21h

    mov dl, count
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h

main endp
end main
