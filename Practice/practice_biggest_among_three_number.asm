.model small

.stack 100h

.data


.code
main proc
    mov ah, 1
    int 21h
    mov bl, al
    
    int 21h
    mov bh, al
    
    int 21h
    mov cl, al
    
    cmp bl, bh
    jge a
    jmp b
    
    a:
    cmp bl, cl
    jge d
    mov ah, 2
    mov dl, cl
    int 21h
    jmp exit
    
    b:
    cmp bh, cl
    jge c
    mov ah, 2
    mov dl, cl
    int 21h
    jmp exit
    
    c:
    mov ah, 2
    mov dl, bh
    int 21h
    jmp exit 
    
    d:
    mov ah, 2
    mov dl, bl
    int 21h   
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main