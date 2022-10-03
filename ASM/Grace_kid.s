.macro M
 main:
.endm
.macro set
 name: .asciz "Grace_kid.s"
 code: .asciz ".macro M%c main:%c.endm%c.macro set%c name: .asciz %cGrace_kid.s%c%c code: .asciz %c%s%c%c.endm%c.macro source%cM%c mov $2, %rax; mov $name, %rdi; mov $578, %rsi; mov $511, %rdx; syscall; push %rax%c mov %rax, %rdi; xor %rax, %rax; mov $code, %rsi; mov $0xa, %rdx; mov $0xa, %rcx; mov $0xa, %r8; mov $0xa, %r9%c mov $0, %rbx; mov $17, %r10%cloop: inc %rbx%c push $0xa; cmp %rbx, %r10; jne loop%c push $0xa; push $0x22; push $code; push $0x22; push $0xa; push $0x22; push $0x22%ccall dprintf; add $0x88, %rsp; add $0x38, %rsp; pop %rax; mov %rax, %rdi; mov $3, %rdi; syscall%c.endm%c.global main%c.data%c set%c.text%c source%c ret%c"
.endm
.macro source
M
 mov $2, %rax; mov $name, %rdi; mov $578, %rsi; mov $511, %rdx; syscall; push %rax
 mov %rax, %rdi; xor %rax, %rax; mov $code, %rsi; mov $0xa, %rdx; mov $0xa, %rcx; mov $0xa, %r8; mov $0xa, %r9
 mov $0, %rbx; mov $17, %r10
loop: inc %rbx
 push $0xa; cmp %rbx, %r10; jne loop
 push $0xa; push $0x22; push $code; push $0x22; push $0xa; push $0x22; push $0x22
call dprintf; add $0x88, %rsp; add $0x38, %rsp; pop %rax; mov %rax, %rdi; mov $3, %rdi; syscall
.endm
.global main
.data
 set
.text
 source
 ret
