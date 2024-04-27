section .data
        pathname dd "/home/styburek2002/Desktop/NASM_x86/Using Lseek with Files/file.txt"
section .bss
        buffer: resb 50
section .text

global main

main:
        ;open file
        mov eax,5
        mov ebx,pathname
        mov ecx,0
        int 80h

        ;set up lseek
        mov ebx,eax
        mov eax,19
        mov ecx,14
        mov edx,0
        int 80h

        ;read 7 bytes from the start lseek set
        mov eax,3
        mov ecx,buffer
        mov edx, 7
        int 80h

        ;setup end of app
        mov eax,1
        mov ebx,0
        int 80h
