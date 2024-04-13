section .data

section .text

global _start

_start:
        MOV eax,12
        SHR eax,2 ;divide by 2 twice -> 12/2/2
        INT 80h

