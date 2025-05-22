section .data
    message db "La suma de los valores es: ", 0
    newline db 10, 0         ; Nueva línea para la salida
    numbers dw 15, 25, 35    ; Define una estructura de datos con tres números de tipo word (2 bytes)
section .bss
    buffer resb 5            ; Buffer para convertir la suma a caracteres (suficiente para números de hasta 5 dígitos)

section .text
    global _start
; Macro para imprimir una cadena terminada en null
%macro PRINT_STRING 1
    mov eax, 4               ; Syscall para 'write'
    mov ebx, 1               ; File descriptor 1 es stdout
    mov ecx, %1              ; Dirección de la cadena a imprimir
    mov edx, 0               ; Inicializamos la longitud en 0
    .next_char:
        cmp byte [ecx + edx], 0 ; Comparamos el byte actual con el null terminator
        je .finished          ; Si es null, hemos llegado al final
        inc edx              ; Incrementamos el contador de longitud
        jmp .next_char        ; Saltamos al siguiente carácter
    .finished:
        int 0x80               ; Realizamos la llamada al sistema
%endmacro
; Macro para imprimir un número
%macro PRINT_NUMBER 1
    mov eax, %1              ; Movemos el número al registro eax
    mov ecx, buffer + 4      ; Apuntamos al final del buffer
    mov byte [ecx], 0        ; Null-terminate el buffer

    .divide_loop:
        mov edx, 0           ; Limpiamos el registro edx para la operación de división
        mov ebx, 10          ; Divisor (para obtener dígitos decimales)
        div ebx              ; Divide eax por ebx (eax = cociente, edx = residuo)
        add dl, '0'          ; Convierte el residuo (dígito) a su representación ASCII
        dec ecx              ; Movemos el puntero del buffer hacia la izquierda
        mov [ecx], dl        ; Almacenamos el dígito ASCII en el buffer
        cmp eax, 0           ; Comparamos el cociente con 0
        jnz .divide_loop      ; Si el cociente no es 0, continuamos dividiendo

    ; Imprimimos la cadena resultante en el buffer
    mov eax, 4               ; Syscall para 'write'
    mov ebx, 1               ; File descriptor 1 es stdout
    mov edx, buffer          ; Dirección del buffer
    mov esi, buffer + 4      ; Puntero al final del buffer (null terminator)
    sub esi, edx             ; Calculamos la longitud de la cadena
    mov ecx, esi             ; Movemos la longitud a ecx
    int 0x80               ; Realizamos la llamada al sistema
%endmacro

; Macro para calcular e imprimir la suma
%macro PRINT_SUM 0
    mov ax, [numbers]      ; Carga el primer número en ax
    add ax, [numbers + 2]  ; Suma el segundo número a ax
    add ax, [numbers + 4]  ; Suma el tercer número a ax
    PRINT_NUMBER ax        ; Imprime la suma
    PRINT_STRING newline   ; Imprime una nueva línea
%endmacro

_start:
    ; Imprime el mensaje inicial
    PRINT_STRING message

    ; Imprime la suma de los valores
    PRINT_SUM

    ; Salir del programa
    mov eax, 1               ; Syscall para 'exit'
    mov ebx, 0               ; Código de salida
    int 0x80
