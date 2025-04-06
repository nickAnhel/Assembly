global _start                   ; make _start label global

section .data                   ; static data section
message db "Hello, world!", 0   ; store data

section .text                   ; code section
_start:                         ; entrypoint

    mov rax, 1                  ; suscall 'write'
    mov rdi, 1                  ; file descriptor
    mov rsi, message            ; data pointer
    mov rdx, 13                 ; number bytes in data
    syscall

    mov rax, 60                 ; syscall 'exit'
    mov rdi, 0                  ; exit code
    syscall	
