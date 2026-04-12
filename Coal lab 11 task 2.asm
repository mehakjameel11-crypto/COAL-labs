 .model small
.stack 100h
.data
str db 'MADAM','$'
msg1 db 'Palindrome$'
msg2 db 'Not Palindrome$'

.code
main proc
    mov ax, @data
    mov ds, ax


    lea si, str
    mov cx, 0

len_loop:
    cmp [si], '$'
    je push_half
    inc cx
    inc si
    jmp len_loop


push_half:
    lea si, str
    mov bx, cx
    shr bx, 1        

push_loop:
    cmp bx, 0
    je check_half
    mov al, [si]
    push ax
    inc si
    dec bx
    jmp push_loop


check_half:
    mov bx, cx
    shr bx, 1
    cmp cx, 1
    jbe compare

    test cx, 1       
    jz compare
    inc si           


compare:
    mov bx, cx
    shr bx, 1

comp_loop:
    cmp bx, 0
    je palin

    pop ax
    cmp al, [si]
    jne not_palin

    inc si
    dec bx
    jmp comp_loop
    
palin:
    lea dx, msg1
    mov ah, 09h
    int 21h
    jmp exit


not_palin:
    lea dx, msg2
    mov ah, 09h
    int 21h

exit:
    mov ah, 4ch
    int 21h

main endp
end main
