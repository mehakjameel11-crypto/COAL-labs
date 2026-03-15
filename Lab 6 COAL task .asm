org 100h

.model small
.stack 100h

.data
line1 db 'Full Name: Mehak Jamil $'
line2 db 13,10,'SAP Id: 68625 $'
line3 db 13,10,'Batch: 2025 $'
line4 db 13,10,'Program + Semester: BSSE Semester 3 $'

.code
main proc

mov ax, @data
mov ds, ax


mov ah, 09h
lea dx, line1
int 21h


mov ah, 09h
lea dx, line2
int 21h


mov ah, 09h
lea dx, line3
int 21h


mov ah, 09h
lea dx, line4
int 21h

mov ah,4ch
int 21h

main endp
end main
