.extern sprintf, fprintf, access, fopen, fclose, system, exit;
.global main;

.data
.set I, 5
name: .asciz "Sully_%d"
filename: .asciz "Sully_%d.s"
mode: .asciz "w"
code: .asciz ".extern sprintf, fprintf, access, fopen, fclose, system, exit;%1$c.global main;%1$c%1$c.data%1$c.set I, %3$d%1$cname: .asciz %2$cSully_%%d%2$c%1$cfilename: .asciz %2$cSully_%%d.s%2$c%1$cmode: .asciz %2$cw%2$c%1$ccode: .asciz %2$c%4$s%2$c%1$ccommand: .asciz %2$cgcc -Wall -Werror -Wextra -no-pie -Wa,--defsym,NOTFIRST=1 Sully_%%1$d.s -o Sully_%%1$d && chmod +x Sully_%%1$d && ./Sully_%%1$d%2$c%1$c%1$c.bss%1$c.lcomm buff, 1024;%1$c%1$c.text%1$cmain:%1$c  push %rbp;%1$c  mov $I, %r12;%1$c  cmp $0, %r12;%1$c  jle early_exit;%1$c  .ifdef NOTFIRST%1$c  dec %r12;%1$c  .endif%1$c%1$c  mov $buff, %rdi;%1$c  lea filename(%rip), %rsi;%1$c  mov %r12, %rdx;%1$c  xor %rax, %rax;%1$c  call sprintf;%1$c%1$c  mov $buff, %rdi;%1$c  lea mode(%rip), %rsi;%1$c  call fopen;%1$c  mov %rax, %rbx;%1$c  cmp $0, %rbx;%1$c  je early_exit;%1$c%1$c  mov %rbx, %rdi;%1$c  lea code(%rip), %rsi;%1$c  mov $10, %rdx;%1$c  mov $34, %rcx;%1$c  mov %r12, %r8;%1$c  lea code(%rip), %r9;%1$c  xor %rax, %rax;%1$c  call fprintf;%1$c  mov %rbx, %rdi;%1$c  call fclose;%1$c%1$c  mov $buff, %rdi;%1$c  lea command(%rip), %rsi;%1$c  mov %r12, %rdx;%1$c  call sprintf;%1$c  mov $buff, %rdi;%1$c  call system;%1$c%1$c  mov $0, %rax;%1$c  pop %rbp;%1$c  ret;%1$c%1$cearly_exit:%1$c  mov $1, %rdi;%1$c  call exit;%1$c"
command: .asciz "gcc -Wall -Werror -Wextra -no-pie -Wa,--defsym,NOTFIRST=1 Sully_%1$d.s -o Sully_%1$d && chmod +x Sully_%1$d && ./Sully_%1$d"

.bss
.lcomm buff, 1024;

.text
main:
  push %rbp;
  mov $I, %r12;
  cmp $0, %r12;
  jle early_exit;
  .ifdef NOTFIRST
  dec %r12;
  .endif

  mov $buff, %rdi;
  lea filename(%rip), %rsi;
  mov %r12, %rdx;
  xor %rax, %rax;
  call sprintf;

  mov $buff, %rdi;
  lea mode(%rip), %rsi;
  call fopen;
  mov %rax, %rbx;
  cmp $0, %rbx;
  je early_exit;

  mov %rbx, %rdi;
  lea code(%rip), %rsi;
  mov $10, %rdx;
  mov $34, %rcx;
  mov %r12, %r8;
  lea code(%rip), %r9;
  xor %rax, %rax;
  call fprintf;
  mov %rbx, %rdi;
  call fclose;

  mov $buff, %rdi;
  lea command(%rip), %rsi;
  mov %r12, %rdx;
  call sprintf;
  mov $buff, %rdi;
  call system;

  mov $0, %rax;
  pop %rbp;
  ret;

early_exit:
  mov $1, %rdi;
  call exit;
