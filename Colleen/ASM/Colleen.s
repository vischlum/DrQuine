.extern printf;
.global main;

.text
main:
  # The GNU Assembler, commonly known as gas, is the assembler used by the GNU Project.
  call gasgasgas;
  push %rbx;
  lea format(%rip), %rdi;
  mov $10, %rsi;
  mov $34, %rdx;
  lea format(%rip), %rcx;
  xor %rax, %rax;
  call printf;
  mov $0, %rax;
  pop %rbx;
  ret;
# https://www.youtube.com/watch?v=atuFSv2bLa8
gasgasgas:
  ret;

.data
format:.asciz ".extern printf;%1$c.global main;%1$c%1$c.text%1$cmain:%1$c  # The GNU Assembler, commonly known as gas, is the assembler used by the GNU Project.%1$c  call gasgasgas;%1$c  push %rbx;%1$c  lea format(%rip), %rdi;%1$c  mov $10, %rsi;%1$c  mov $34, %rdx;%1$c  lea format(%rip), %rcx;%1$c  xor %rax, %rax;%1$c  call printf;%1$c  mov $0, %rax;%1$c  pop %rbx;%1$c  ret;%1$c# https://www.youtube.com/watch?v=atuFSv2bLa8%1$cgasgasgas:%1$c  ret;%1$c%1$c.data%1$cformat:.asciz %2$c%3$s%2$c%1$c"
