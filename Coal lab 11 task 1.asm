.model small
.stack 100h
.data
str db 'HELLO','$'
msg db 'Total Characters = $'

.code
main proc
    mov ax, @data
    mov ds, ax

    lea si, str
    mov cx, 0        

next_char:
    mov al, [si]
    cmp al, '$'
    je done

    push ax
    inc cx
    inc si
    jmp next_char

done:
   
    lea dx, msg
    mov ah, 09h
    int 21h

   
    mov dl, cl
    add dl, '0'

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main
