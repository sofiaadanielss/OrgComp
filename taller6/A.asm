section .data
    num1 db 63         ; Primera variable (entre 1 y 3)
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