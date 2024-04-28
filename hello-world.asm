section .data
    hello_msg   db  'Hello, World!', 0

section .text
    global _start

_start:
    ; write the string to stdout
    mov     eax, 4          ; sys_write system call
    mov     ebx, 1          ; file descriptor (stdout)
    mov     ecx, hello_msg  ; pointer to the message
    mov     edx, 13         ; message length
    int     0x80            ; make syscall

    ; exit the program
    mov     eax, 1          ; sys_exit system call
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; make syscall