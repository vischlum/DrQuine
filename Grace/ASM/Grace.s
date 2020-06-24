.macro DATA_FOPEN
.data
kid: .asciz "Grace_kid.s"
mode: .asciz "w"
.endm

.macro DATA_FPRINTF
.data
code: .asciz ".macro DATA_FOPEN%1$c.data%1$ckid: .asciz %2$cGrace_kid.s%2$c%1$cmode: .asciz %2$cw%2$c%1$c.endm%1$c%1$c.macro DATA_FPRINTF%1$c.data%1$ccode: .asciz %2$c%3$s%2$c%1$c.endm%1$c%1$c# Gas est une commune française située dans le département d'Eure-et-Loir, en région Centre-Val de Loire.%1$c%1$c.macro Grace%1$c.extern fprintf, fopen, fclose, exit;%1$cDATA_FOPEN%1$cDATA_FPRINTF%1$c.global main;%1$c%1$c.text%1$cmain:%1$c  push %rbx;%1$c  lea kid(%rip), %rdi;%1$c  lea mode(%rip), %rsi;%1$c  call fopen;%1$c  mov %rax, %rbx;%1$c  cmp $0, %rbx;%1$c  je fopen_fail;%1$c  mov %rbx, %rdi;%1$c  lea code(%rip), %rsi;%1$c  mov $10, %rdx;%1$c  mov $34, %rcx;%1$c  lea code(%rip), %r8;%1$c  xor %rax, %rax;%1$c  call fprintf;%1$c  mov %rbx, %rdi;%1$c  call fclose;%1$c  mov $0, %rax;%1$c  pop %rbx;%1$c  ret;%1$c%1$cfopen_fail:%1$c  mov $1, %rdi;%1$c  call exit;%1$c.endm%1$cGrace%1$c"
.endm

# Gas est une commune française située dans le département d'Eure-et-Loir, en région Centre-Val de Loire.

.macro Grace
.extern fprintf, fopen, fclose, exit;
DATA_FOPEN
DATA_FPRINTF
.global main;

.text
main:
  push %rbx;
  lea kid(%rip), %rdi;
  lea mode(%rip), %rsi;
  call fopen;
  mov %rax, %rbx;
  cmp $0, %rbx;
  je fopen_fail;
  mov %rbx, %rdi;
  lea code(%rip), %rsi;
  mov $10, %rdx;
  mov $34, %rcx;
  lea code(%rip), %r8;
  xor %rax, %rax;
  call fprintf;
  mov %rbx, %rdi;
  call fclose;
  mov $0, %rax;
  pop %rbx;
  ret;

fopen_fail:
  mov $1, %rdi;
  call exit;
.endm
Grace
