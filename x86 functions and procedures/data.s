section .data

section .text

global _start

_start:
        mov eax,4
        mov ebx,1
        call add_two
        mov ebx,eax
        mov eax,1
        int 80h

add_two:
        add eax,ebx
        ret
