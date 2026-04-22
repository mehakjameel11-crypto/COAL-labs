 .model small
.stack 100h

.data

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 4        
    mov bx, 1        

outer_loop:
    push cx        

    mov cx, bx      
    mov dl, 31h      

inner_loop:
    mov ah, 02h
    int 21h

    inc dl
    loop inner_loop

    
    mov dl, 0Dh
    mov ah, 02h
    int 21h
    mov dl, 0Ah
    int 21h

    inc bx           
    pop cx
    loop outer_loop

    mov ah, 4Ch
    int 21h

main endp
end main
