.model small
.stack 100h
.data   

  arr db 65,66,67,68,69,70
.code
main proc    
    
    mov ax,@data
    mov ds,ax
    mov si,offset arr+5
    mov cx,7
    
   loopx:
   mov dl,[si]
   mov ah,2
   int 21h
   
   dec si
   loop loopx
    
mov ah,4ch
int 21h
main endp
end main