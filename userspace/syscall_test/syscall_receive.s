BITS 64
section .data
    dest db 'receiver'

section .text

    ; rax -- syscall number
    ; rdi -- first argument
    ; rsi -- second argument
    ; rdx -- third argument
    ; r10 -- fourth argument
    ; r9  -- fifth argument 
    ; r8  -- sixth argument
    
    mov rbx, 2; 1 is the syscall recv

main:
    mov rax, rbx ; rbx is holding ground/accumulator for syscall num
    mov rdi, 3
    mov rsi, 3
    mov rdx, 5
    mov r10, 8
    mov r9 , 13
    mov r8 , 21
    
    push rbx
    syscall    
    pop rbx
  
    mov rcx, 0x4000000
    

loopstart:
    
    ;add rax,  1

    dec rcx
    jnz loopstart
    
    mov rax, rbx

    

    ;  infinite loop
    jmp main