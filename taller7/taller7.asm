;1
section .data
    msg_igual db "Numeros iguales"
    msg_mayor db "El primer numero es mayor"
    msg_menor db "El segundo numero es mayor"
    
    section .bss
    num1 resb 1 
    num2 resb 2 
    
section .text
    global _start

_start:

    mov al, [num1]    
    cmp al, [num2]   
    je flag_igual
    jl flag_menor
    jg flag_mayor

flag_mayor
  mov ecx, msg_mayor
  jmp imprimir

flag_menor
  mov ecx, msg_menor
  jmp imprimir

flag_igual
  mov ecx, msg_igual
  jmp imprimir

imprimir ;codigo para imprimir msg
  
int 0x80

;2
section .data
    msg_positivo db "El numero es positivo"
    msg_negativo db "El numero es negativo"
    msg_cero db "El numero es igual a cero"
    num2 db 0
    
    section .bss
    num1 resb 1
    
section .text
    global _start

_start:

    mov al, [num1]    
    cmp al, [num2]   
    jg flag_positivo ;greater
    jl flag_negativo ;lesser
    je flag_cero     ;equal

flag_positivo
  mov ecx, msg_positivo
  jmp imprimir

flag_negativo
  mov ecx, msg_negativo
  jmp imprimir

flag_cero
  mov ecx, msg_cero
  jmp imprimir

imprimir ;codigo para imprimir msg
int 0x80

;3
section .data
    msg_par db "El numero es par", 0
    msg_impar db "El numero es impar", 0
    
    section .bss
    num1 resb 1
    
section .text
    global _start

_start:

    mov al, [num1] 
    test al, num1
    jz par
    jnz impar

flag_par
  mov ecx, msg_par
  jmp imprimir

flag_impar
  mov ecx, msg_impar
  jmp imprimir

imprimir: ;codigo para imprimir msg
int 0x80

;4
section .data
    msg_overflow db "Se detecto overflow" , 0xA, 0  
    msg_sinoverflow db "No se detecto overflow" , 0xA, 0  
    section .bss
      num1 db 1                                  
      num2 db 2            
    
section .text
    global _start

_start:
    mov al, [num1] 
    mov bl, [num2]
    add al, bl   
    jo overflow_detected 
    
no_overflow:
    mov ecx, msg_sinoverflow 
    jmp print  
    overflow_detected:
        mov ecx, msg_overflow 
        jmp print

print:  
int 0x80 

5;
section .data
    msg_cf db "Carry Flag", 0xA, 0
    msg_nocf db "No Carry Flag", 0xA, 0
    num1 db 1                          
    num2 db 2                                
    result db 0                                
section .text
    global _start

_start:
    mov al, [num1]  
    mov bl, [num2] 
    add al, bl    
    jc carry_flag_true
carry_flag_false:
    mov ecx, msg_nocf 
    jmp print
    
carry_flag_true:      
    mov ecx, msg_cf 
    jmp print

print:         
int 0x80    

;6
section .data
    msg_mayor db "El numero mayor "
    msg_menor db "El numero menor"
    section .bss
    num1 db 1         
    num2 db 2   
    num3 db 3
    
section .text
    global _start

_start:
  mov al, [num1]
  mov bl, [num2]
  mov cl, [num3]
  jg flag_mayor
  jl flag_menor
  
flag_mayor:
  mov ecx, msg_mayor
  jmp print

flag_menor:
  mov ecx, msg_menor
  jmp print 
  
print:
int 0x80

;7

section .data
    section .bss
    num1 db 1         
    num2 db 2   
    temp db 0
    
section .text
    global _start

_start:
  mov al, [num1]
  mov bl, [num2]
  cmp al, bl
  jle no_cambio
  
  mov [temp], al
  mov al, bl
  mov [num1], al
  mov al, [temp]
  mov [num2], al
  
no_cambio:
  mov eax, num1
  
print:
int 0x80

;8
section .data
  contador db 0
    
section .text
    global _start

_start:
  mov al, 0
  
ciclo:
  mov [contador], al
  inc al
  cmp al, 10
  jne ciclo
  
print:
int 0x80
