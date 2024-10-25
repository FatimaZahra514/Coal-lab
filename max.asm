 include 'emu8086.inc' 
 org 100h
.model small
.stack 100h
.data   
  arr db 8,5,3,6,2,9  
.code
main proc    
    mov ax, @data
    mov ds, ax
    mov si, offset arr      
    mov cx, 6               
    
    mov bl, [si]            
                     
loopA:
   cmp [si],bl
    jge max
    
    compare:   
    inc si
    loop loopA 
    print "largest value in array: "
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h
    max:
    mov bl,[si] 
     jmp compare 


    mov ah, 4Ch             
    int 21h

main endp
end main
