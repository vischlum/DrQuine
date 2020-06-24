#include <stdio.h>

// Le titre francophone de la série n'est pas une traduction fidèle du titre américain.

#define NAME Grace
#define STR "#include <stdio.h>%1$c%1$c// Le titre francophone de la série n'est pas une traduction fidèle du titre américain.%1$c%1$c#define NAME Grace%1$c#define STR %2$c%4$s%2$c%1$c#define MAIN int main(void) {%3$c%1$c  FILE *kid = fopen(%2$c./Grace_kid.c%2$c, %2$cw%2$c);%3$c%1$c  if (NULL == kid) return (1);%3$c%1$c  fprintf(kid, STR, 10, 34, 92, STR);%3$c%1$c  fclose(kid);%3$c%1$c  return (0);}%1$cMAIN"
#define MAIN int main(void) {\
  FILE *kid = fopen("./Grace_kid.c", "w");\
  if (NULL == kid) return (1);\
  fprintf(kid, STR, 10, 34, 92, STR);\
  fclose(kid);\
  return (0);}
MAIN