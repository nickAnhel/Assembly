global main

section .data
msg1 db "Hello, world!", 10, 0              ; db - define byte
msg2 db "My name is dillkree", 0x0A, 0      ; 10 or 0xA - line break symbol


section .text
main:
    mov rsi, msg1
    mov rdx, 14
    call print

    mov rsi, msg2
    mov rdx, 20
    call print

    call quit
    ret

print:
    mov rax, 1
    mov rdi, 1
    syscall
    ret

quit:
    mov rax, 60
    mov rdi, 0
    syscall
    ret
