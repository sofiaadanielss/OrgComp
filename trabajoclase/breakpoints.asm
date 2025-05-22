section .data
    mensaje_error db "Error: División por cero detectada.", 0ah, 0

section .text
    global _start

_start:
    mov eax, 10
    mov ebx, 2

    cmp ebx, 0
    je .catch_bloque

    mov edx, 0
    div ebx
    jmp .try_exitoso

.catch_bloque:
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje_error
    int 0x80

    mov eax, 0xFFFFFFFF
    jmp .fin

.try_exitoso:
    jmp .fin

.fin:
    mov eax, 1
    xor ebx, ebx
    int 0x80

#include <stdio.h>
#include <setjmp.h>

jmp_buf env;

void func();

int main()
{
    if (setjmp(env) == 0)
    {
        printf("JMP_BUFFER colocado.\n");
        func();
    }
    else
    {
        printf("Regreso a main por medio de longjmp.\n");
    }
    return 0;
}

void func()
{
    longjmp(env, 1);
}

#include <stdio.h>

int main()
{
    int a = 5, b = 10, suma;

#ifdef DEBUG
    __asm__("int $3");
#endif

    suma = a + b;

    printf("Antes de la suma: a = %d, b = %d\n", a, b);
    printf("Despues de la suma: suma = %d\n", suma);

    for (int i = 0; i < 5; i++)
    {
        printf("Iteracion: %d\n", i);
    }

    return 0;
}