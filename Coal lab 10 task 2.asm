.model small
.stack 100h

.data
    msg1 db "Enter 5 numbers: $"
    msg2 db 0Dh,0Ah,"Largest number is: $"

    arr db 5 dup(?)

.code

  
input proc
    mov ah, 01h
    int 21h
    sub al, 30h
    ret
input endp

main proc
    mov ax, @data
    mov ds, ax

 
    mov ah, 09h
    lea dx, msg1
    int 21h

   
    mov cx, 5
    lea si, arr

take_input:
    call input
    mov [si], al
    inc si
    loop take_input

    ; ---- Find largest ----
    lea si, arr
    mov bl, [si]     
    mov cx, 4
    inc si

find_max:
    mov al, [si]
    cmp al, bl
    jle next
    mov bl, al        

next:
    inc si
    loop find_max

    ; ---- Display result ----
    mov ah, 09h
    lea dx, msg2
    int 21h

    mov dl, bl
    add dl, 30h
    mov ah, 02h
    int 21h

    ; ---- Exit ----
    mov ah, 4Ch
    int 21h

main endp
end main
