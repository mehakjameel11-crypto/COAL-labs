.model small
.stack 100h
.data
msg1      db 'Enter first number (0-9): $'
msg2      db 'Enter second number (0-9): $'
greater_msg db 'Greater$'
smaller_msg db 'Smaller$'
equal_msg db 'Equal$'
num1 db ?
num2 db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Input first number
    lea dx, msg1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, '0'       ; ASCII to number
    mov num1, al

    ; Input second number
    lea dx, msg2
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, '0'       ; ASCII to number
    mov num2, al

    ; Compare num1 and num2
    mov al, num1
    cmp al, num2
    je print_equal
    ja print_greater
    jb print_smaller

print_greater:
    lea dx, greater_msg
    mov ah, 9
    int 21h
    jmp done

print_smaller:
    lea dx, smaller_msg
    mov ah, 9
    int 21h
    jmp done

print_equal:
    lea dx, equal_msg
    mov ah, 9
    int 21h

done:
    mov ah, 4ch
    int 21h

main endp
end main
