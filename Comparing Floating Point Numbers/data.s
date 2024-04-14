section .data
        x dd 3.14
        x2 dd 4.2
        y dd 2.1
section .text
global _start

_start:
        movss xmm0,[x]
        movss xmm1,[y]
        ucomiss xmm0,xmm1
        ja greater
        jmp end

greater:
        movss xmm0,[x2]

end:
        int 80h
        