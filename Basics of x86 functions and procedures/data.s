section .data

section .text

global main

add_two:
        add eax,ebx
        ret

main:
        mov eax,4
        mov ebx,1
        call add_two
        mov ebx,eax
        mov eax,1
        int 80h


