#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define DATA "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c%1$c#define DATA %2$c%4$s%2$c%1$c%1$cint main(void) {%1$c  int i = %3$d;%1$c  if (i <= 0)%1$c    return (0);%1$c  char str[1000];%1$c  sprintf(str, %2$cSully_%%d.c%2$c, i);%1$c  if (-1 != access(str, F_OK))%1$c    i--;%1$c  sprintf(str, %2$cSully_%%d.c%2$c, i);%1$c  FILE *fd = fopen(str, %2$cw%2$c);%1$c  if (NULL == fd)%1$c    return (1);%1$c  fprintf(fd, DATA, 10, 34, i, DATA);%1$c  fclose(fd);%1$c  sprintf(str, %2$cclang -Wall -Wextra -Werror Sully_%%1$d.c -o Sully_%%1$d && chmod +x Sully_%%1$d && ./Sully_%%1$d%2$c, i);%1$c  system(str);%1$c  return (0);%1$c}"

int main(void) {
  int i = 5;
  if (i <= 0)
    return (0);
  char str[1000];
  sprintf(str, "Sully_%d.c", i);
  if (-1 != access(str, F_OK))
    i--;
  sprintf(str, "Sully_%d.c", i);
  FILE *fd = fopen(str, "w");
  if (NULL == fd)
    return (1);
  fprintf(fd, DATA, 10, 34, i, DATA);
  fclose(fd);
  sprintf(str, "clang -Wall -Wextra -Werror Sully_%1$d.c -o Sully_%1$d && chmod +x Sully_%1$d && ./Sully_%1$d", i);
  system(str);
  return (0);
}