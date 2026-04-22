.model small
.stack 100h

.data
    msg1 db "Enter 5 elements: $"
    msg2 db 0Dh,0Ah,"Reversed array: $"

.code
main proc
    mov ax, @data
    mov ds, ax

   
    mov ah, 09h
    lea dx, msg1
    int 21h

    mov cx, 5

push_loop:
    mov ah, 01h
    int 21h
    sub al, 30h

    mov ah, 0        
    push ax         
    loop push_loop

 
    mov ah, 09h
    lea dx, msg2
    int 21h

    mov cx, 5

pop_loop:
    pop ax           
    add al, 30h

    mov dl, al
    mov ah, 02h
    int 21h

    loop pop_loop

    
    mov ah, 4Ch
    int 21h

main endp
end main
