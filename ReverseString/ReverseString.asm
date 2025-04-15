section .data
cr: db 0x0A
string: db "Reverse"
len: equ $ - string

section .text
global _start

_start:
    mov rbp, len + 1            ; Loop counter
    mov rbx, string + len       ; Last symbol of the string

lp:
    ; Write symbol to stdout
    mov rsi, rbx
    call print_symbol
    
    ; Move pointer to the previous symbol
    dec rbx
    
    ; Next iteration
    dec rbp
    cmp rbp, 0
    jne lp

    ; Write '\n'
    mov rsi, cr
    call print_symbol

    ; Exit with code 0
    call exit

print_symbol:
    mov rax, 1
    mov rdi, 1
    mov rdx, 1
    syscall
    ret

exit:
    mov rax, 60
    mov rdi, 0
    syscall
