.data
string:
 .asciz ".data%cstring:%c .asciz %c%s%c%c .global main%c .text%c#hello%cfunc:%c ret%cmain:%c#hii%c push %rbp%c mov %rsp, %rbp%c call func%c mov $string, %rdi%c mov $0xa, %rsi%c mov $0xa, %rdx%c mov $0x22, %rcx%c mov $string, %r8%c mov $0x22, %r9%c mov $0, %rbx%c mov $28, %r10%c loop: inc %rbx%c push $0xa%c cmp %rbx, %r10%c jne loop%c call printf%c add $0xe0, %rsp%c pop %rbp%c ret%c%c"
 .global main
 .text
#hello
func:
 ret
main:
#hii
 push %rbp
 mov %rsp, %rbp
 call func
 mov $string, %rdi
 mov $0xa, %rsi
 mov $0xa, %rdx
 mov $0x22, %rcx
 mov $string, %r8
 mov $0x22, %r9
 mov $0, %rbx
 mov $28, %r10
 loop: inc %rbx
 push $0xa
 cmp %rbx, %r10
 jne loop
 call printf
 add $0xe0, %rsp
 pop %rbp
 ret

