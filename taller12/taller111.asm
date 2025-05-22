section .data
    num1 db 5         ; Define una variable llamada num1 de tipo byte (db) y le asigna el valor 5
    num2 db 11        ; Define una variable llamada num2 de tipo byte (db) y le asigna el valor 11
    result db 0       ; Define una variable llamada result de tipo byte (db) y la inicializa con el valor 0
    message db "Resultado: ", 0  ; Define una cadena de texto llamada message, terminada en null (0)

section .bss
    buffer resb 4      ; Reserva 4 bytes de espacio sin inicializar en la sección .bss y lo etiqueta como buffer

section .text
    global _start     ; Declara el símbolo _start como global, punto de entrada del programa

%macro PRINT_STRING 1
    mov eax, 4        ; Mueve el número de llamada al sistema (sys_write) al registro eax
    mov ebx, 1        ; Mueve el descriptor de archivo para la salida estándar (stdout) al registro ebx
    mov ecx, %1       ; Mueve la dirección del argumento 1 (la cadena a imprimir) al registro ecx
    mov edx, 13       ; Mueve la longitud de la cadena (incluyendo el null) al registro edx
    int 0x80          ; Realiza la llamada al sistema para imprimir la cadena
%endmacro

%macro PRINT_NUMBER 1
    mov eax, %1       ; Mueve el valor del argumento 1 (el número a imprimir) al registro eax
    add eax, '0'      ; Convierte el valor numérico ASCII sumándole el código ASCII del carácter '0'
    mov [buffer], eax  ; Mueve el valor ASCII del dígito al espacio de memoria reservado en buffer
    mov eax, 4        ; Mueve el número de llamada al sistema (sys_write) al registro eax
    mov ebx, 1        ; Mueve el descriptor de archivo para la salida estándar (stdout) al registro ebx
    mov ecx, buffer   ; Mueve la dirección del buffer (que ahora contiene el dígito ASCII) al registro ecx
    mov edx, 1         ; Mueve la longitud a imprimir (1 byte, el dígito) al registro edx
    int 0x80          ; Realiza la llamada al sistema para imprimir el dígito
%endmacro

_start:
    mov al, [num1]    ; Mueve el valor de la variable num1 al registro de 8 bits al (parte baja de eax)
    add al, [num2]    ; Suma el valor de la variable num2 al valor que ya está en el registro al
    mov [result], al  ; Mueve el resultado de la suma (que está en al) a la variable result

    PRINT_STRING message ; Llama a la macro PRINT_STRING para imprimir la cadena "Resultado: "
    PRINT_NUMBER [result] ; Llama a la macro PRINT_NUMBER para imprimir el valor de la variable result

    ; Salir del programa
    mov eax, 1        ; Mueve el número de llamada al sistema (sys_exit) al registro eax
    mov ebx, 0        ; Mueve el código de salida 0 (éxito) al registro ebx
    int 0x80          ; Realiza la llamada al sistema para salir del programa