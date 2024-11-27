.model small
.stack 100h
.data
    num1 db -5
    num2 db 7
    msgP db 'The result is positive$'
    msgN db 'The result is negative$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num1
    add al, num2

    ; Check Sign Flag  after addition
    js Negative ; Jump if  (result is negative)

    ; If positive
    mov dx, offset msgP
    mov ah, 09h
    int 21h
    jmp exit

Negative:
    mov dx, offset msgN
    mov ah, 09h
    int 21h

exit:
    mov ah, 4Ch
    int 21h
main endp
end main
