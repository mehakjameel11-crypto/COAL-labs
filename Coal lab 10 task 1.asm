  .model small
.stack 100h

.data
    msg1 db "Enter number of elements: $"
    msg2 db 0Dh,0Ah,"Enter elements: $"
    msg3 db 0Dh,0Ah,"Sum = $"

    arr db 20 dup(?)
    n db ?
    sum dw 0

.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ah, 09h
    lea dx, msg1
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov n, al

  
    mov ah, 09h
    lea dx, msg2
    int 21h

    mov cl, n
    lea si, arr

input_loop:
    mov ah, 01h
    int 21h
    sub al, 30h
    mov [si], al
    inc si
    loop input_loop
    
    mov cl, n
    lea si, arr
