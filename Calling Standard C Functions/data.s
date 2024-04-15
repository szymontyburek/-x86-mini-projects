extern printf
extern exit

section .data
        msg dd "Hello World!",0
        fmt db "Output is: %s",10,0
section .text
global main

main:
        ;printf(fmt, msg). We're working with a LIFO data structure, so we push msg THEN fmt to the stack
        push msg
        push fmt
        call printf

        ;exit(1)
        push 1
        call exit