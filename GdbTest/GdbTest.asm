section .data
iters: dw 10
muldat: dw 625, 2           ; [muldat] = 625, [muldat + 2] = 2


section .text
global _start

_start:
    movzx rcx, word [rel iters]
    lea rbx, [rel muldat]

    movzx rax, word [rel rbx]
    movzx rdx, word [rbx + 2]

llp:
    imul rax, rdx
    loop llp

    mov rax, 60
    mov rdi, 0
    syscall

