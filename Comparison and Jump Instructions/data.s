section .data

section .text

global _start

_start:
        MOV eax,2
        MOV ebx,2
        CMP eax,ebx 
        JLE lesser
        JMP end

lesser:
        MOV eax,1

end:
        INT 80h
