section .data
        pathname dd "/home/styburek2002/Desktop/NASM_x86/Creating and Writing Files/create.txt"
        toWrite dd "Hello Szymon!"
section .text

global main

main:
        ;open file
        mov eax,5
        mov ebx,pathname

        ;o = base 8 (octal value)
        mov ecx,101o ;O_WRONLY (0001) OR O_CREAT (0100) = 0101 (hover over flags in main.c for more info)
        mov edx,700o ; S_IRUSR (0400) OR S_IWUSR (0200) OR S_IXUSR (0100) = 0700

        int 80h

        mov ebx,eax ;file descriptor is written into eax register from open file procedure
        mov eax,4
        mov ecx,toWrite
        mov edx,13
        int 80h

        ;exit program
        mov eax,1
        mov ebx,0
        int 80h



