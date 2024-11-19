.model small
.stack 100h

.data
nl db 10,13,'$'
a db 'Who are you? $'
b db 'I am robot! $'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    mov ah, 9
    lea dx, b
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main