section .data
    char db 10
    newline db 10

section .text
    global _start

_start:
    ; Sumar dos números distintos
    mov al, 193        ; AL  (antes de la rotación)
    ; Guardar en char  
    mov [char], al
    shl al, 1
    mov [char], al
    rol al, 2
    mov [char], al
    shr al, 1
    mov [char], al
    ror al, 2

    mov [char], al    
    
    ; Escribir carácter en consola
    mov eax, 4         ; syscall write
    mov ebx, 1         ; stdout
    mov ecx, char
    mov edx, 1         ; 1 byte
    int 0x80

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Salir
    mov eax, 1         ; syscall exit
    xor ebx, ebx       ; código de salida 0

section .data
    char db 10
    newline db 10

section .text
    global _start

_start:
    ; Sumar dos números distintos
    mov al, 112       ; AL  (antes de la rotación)
    ; Guardar en char  
    mov [char], al
    shl al, 1
    mov [char], al
    rol al, 1
    mov [char], al
    shr al, 1
    mov [char], al
    ror al, 1

    mov [char], al    
    
    ; Escribir carácter en consola
    mov eax, 4         ; syscall write
    mov ebx, 1         ; stdout
    mov ecx, char
    mov edx, 1         ; 1 byte
    int 0x80

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Salir
    mov eax, 1         ; syscall exit
    xor ebx, ebx       ; código de salida 0
    int 0x80
g.
section .data
    char db 10
    newline db 10

section .text
    global _start

_start:
    ; Sumar dos números distintos
    mov al, 103  ; AL  (antes de la rotación)
    ; Guardar en char  
    mov [char], al
    rol al, 1    
    mov [char], al
    shr al, 1  
    mov [char], al
    shl al, 1
    mov [char], al
    ror al, 1  

    mov [char], al    
    
    ; Escribir carácter en consola
    mov eax, 4         ; syscall write
    mov ebx, 1         ; stdout
    mov ecx, char
    mov edx, 1         ; 1 byte
    int 0x80

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Salir
    mov eax, 1         ; syscall exit
    xor ebx, ebx       ; código de salida 0
    int 0x80

section .data
    char db 10
    newline db 10

section .text
    global _start

_start:
    ; Sumar dos números distintos
    mov al, 122  ; AL  (antes de la rotación)
    ; Guardar en char  
    mov [char], al
    shr al, 1  
    mov [char], al
    shl al, 1
    mov [char], al
    ror al, 2   

    mov [char], al
    rol al, 1


    mov [char], al    
    
    ; Escribir carácter en consola
    mov eax, 4         ; syscall write
    mov ebx, 1         ; stdout
    mov ecx, char
    mov edx, 1         ; 1 byte
    int 0x80

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Salir
    mov eax, 1         ; syscall exit
    xor ebx, ebx       ; código de salida 0
    int 0x80
