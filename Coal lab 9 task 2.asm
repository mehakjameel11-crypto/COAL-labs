 .model small
.stack 100h
.data
msg1    db 'Enter a number (-9 to 9): $'
pos_msg db 'Positive$'
neg_msg db 'Negative$'
num     db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Prompt user
    lea dx, msg1
    mov ah, 9
    int 21h

    ; Input first character
    mov ah, 1
    int 21h
    mov bl, al           ; save first char

    ; Check if negative sign
    cmp al, '-'
    jne check_digit      ; if not '-', go check_digit

    ; Input next char (digit)
    mov ah, 1
    int 21h
    sub al, '0'          ; convert ASCII to number
    neg al               ; make it negative
    jmp check_sign

check_digit:
    sub al, '0'          ; convert ASCII to number

check_sign:
    mov num, al          ; store number

    ; Compare number
    cmp al, 0
    jge print_pos

    ; Negative
    lea dx, neg_msg
    mov ah, 9
    int 21h
    jmp done

print_pos:
    lea dx, pos_msg
    mov ah, 9
    int 21h

done:
    mov ah, 4ch
    int 21h

main endp
end main
