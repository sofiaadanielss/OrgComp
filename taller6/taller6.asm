;2
section .data
    num1 db 56         ; Primera variable (entre 1 y 3)
    num2 db 2         ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    add al, [num2]    ; Sumar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

;3
section .data
    num1 db 56         ; Primera variable (entre 1 y 3)
    num2 db 2         ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    add al, [num2]    ; Sumar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

;4

section .data
    num1 db 3         ; Primera variable (entre 1 y 3)
    num2 db 60         ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    add al, [num2]    ; Sumar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

;5
section .data
    num1 db 35         ; Primera variable (entre 1 y 3)
    num2 db 60         ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    add al, [num2]    ; Sumar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

;6
section .data
    num1 db 130         ; Primera variable (entre 1 y 3)
    num2 db 10         ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    sub al, [num2]    ; Restar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

;7
section .data
    num1 db 100         ; Primera variable (entre 1 y 3)
    num2 db 34         ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    sub al, [num2]    ; Restar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

8;
section .data
    num1 db 100         ; Primera variable (entre 1 y 3)
    num2 db 57         ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    sub al, [num2]    ; Restar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

;9
section .data
    num1 db 40         ; Primera variable (entre 1 y 3)
    num2 db 1        ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    sub al, [num2]    ; Restar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema

;10
section .data
    num1 db 40         ; Primera variable (entre 1 y 3)
    num2 db 1        ; Segunda variable (entre 1 y 3)
    result db 0       ; Espacio para almacenar el resultado convertido a ASCII

section .text
    global _start

_start:
    mov al, [num1]    ; Cargar num1 en AL
    sub al, [num2]    ; Restar num2 a AL

    mov [result], al  ; Guardar el carácter ASCII en 'result'

    ; Imprimir el número (un solo dígito)
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

    ; Salir del programa
    mov eax, 1        ; syscall: sys_exit
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema