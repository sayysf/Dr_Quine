  xor %rdx, %rdx; mov $i, %r8; movw (%r8), %dx; mov $0x0, %rdi; cmp %rdi, %rdx; jne ok;  ret;
  ok:
  push %rbp; mov %rsp, %rbp; sub $0x200, %rsp; lea -0x40(%rbp), %rdi; mov $name, %rsi; xor %rdx, %rdx; mov $i, %r8 ; movw (%r8), %dx; dec %rdx; call sprintf;  lea -0x40(%rbp), %rdi; mov $2, %rax; mov $578, %rsi; mov $511, %rdx; syscall; push %rax; lea -0x200(%rbp), %rdi; mov $arg, %rsi; mov $232, %rdx; call memcpy; xor %rdx, %rdx; mov $i, %r8 ; movw (%r8), %dx; dec %rdx; mov %rdx, 32(%rdi); call memcpy; pop %rdi; xor %rax, %rax; lea -0x200(%rbp), %rsi; mov $0xa, %rdx; mov $0xa, %rcx; mov $0xa, %r8; mov $0xa, %r9; mov $str, %rsi; call dprintf; mov $3, %rax; syscall; lea -0x80(%rbp), %rdi; mov $cc, %rsi; xor %rdx, %rdx; mov $i, %r8; movw (%r8), %dx; dec %rdx; mov %rdx, %rcx; mov %rdx, %r8; call sprintf; lea -0x80(%rbp), %rdi; call system; add $0x200, %rsp; pop %rbp; ret;