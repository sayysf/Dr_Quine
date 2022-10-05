.macro M
 main:
.endm
.macro set
 name: .asciz "Sully_%d.s"
 i: .int 2
 cc: .asciz "clang -Wall -Wextra -Werror Sully_%d.s -o Sully_%d; ./Sully_%d"
 str: .asciz ".macro M%c main:%c.endm%c.macro set%c name: .asciz %cSully_%cd.s%c%c i: .int %d%c cc: .asciz %cclang -Wall -Wextra -Werror Sully_%cd.s -o Sully_%cd; ./Sully_%cd%c%c str: .asciz %c%s%c%c arg: .quad 0x22,0x25,0x22,0xa,0x5,0xa, 0x22,0x25,0x25,0x25,0x22,0xa, 0x22,str,0x22,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa%c.endm%c.macro source%cM%cxor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; mov $0, %rdi; cmp %rdi, %rdx; jne ok; ret; %cok:%c  push %rbp; mov %rsp, %rbp; sub $0x200, %rsp; lea -0x40(%rbp), %rdi; mov $name, %rsi; xor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; dec %rdx; call sprintf;  lea -0x40(%rbp), %rdi; mov $2, %rax; mov $578, %rsi; mov $511, %rdx; syscall; push %rax; lea -0x200(%rbp), %rdi; mov $arg, %rsi; mov $264, %rdx; call memcpy; xor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; dec %rdx; mov %rdx, 32(%rdi); call memcpy; pop %rdi; xor %rax, %rax; lea -0x200(%rbp), %rsi; mov $0xa, %rdx; mov $0xa, %rcx; mov $0xa, %r8; mov $0xa, %r9; mov $str, %rsi; call dprintf; mov $3, %rax; syscall; lea -0x80(%rbp), %rdi; mov $cc, %rsi; xor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; dec %rdx; mov %rdx, %rcx; mov %rdx, %r8; call sprintf; lea -0x80(%rbp), %rdi; call system; add $0x200, %rsp; pop %rbp; ret;%c .endm%c.global main%c.data%c set%c.text%c source%c"
 arg: .quad 0x22,0x25,0x22,0xa,0x5,0xa, 0x22,0x25,0x25,0x25,0x22,0xa, 0x22,str,0x22,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa,0xa
.endm
.macro source
M
xor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; mov $0, %rdi; cmp %rdi, %rdx; jne ok; ret; 
ok:
  push %rbp; mov %rsp, %rbp; sub $0x200, %rsp; lea -0x40(%rbp), %rdi; mov $name, %rsi; xor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; dec %rdx; call sprintf;  lea -0x40(%rbp), %rdi; mov $2, %rax; mov $578, %rsi; mov $511, %rdx; syscall; push %rax; lea -0x200(%rbp), %rdi; mov $arg, %rsi; mov $264, %rdx; call memcpy; xor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; dec %rdx; mov %rdx, 32(%rdi); call memcpy; pop %rdi; xor %rax, %rax; lea -0x200(%rbp), %rsi; mov $0xa, %rdx; mov $0xa, %rcx; mov $0xa, %r8; mov $0xa, %r9; mov $str, %rsi; call dprintf; mov $3, %rax; syscall; lea -0x80(%rbp), %rdi; mov $cc, %rsi; xor %rbx, %rbx; mov $i, %r8; movw (%r8), %bx; mov %rbx, %rdx; dec %rdx; mov %rdx, %rcx; mov %rdx, %r8; call sprintf; lea -0x80(%rbp), %rdi; call system; add $0x200, %rsp; pop %rbp; ret;
 .endm
.global main
.data
 set
.text
 source
