#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#define STR(x) char*s=#x;x
int i = 4;
#define NAME "Sully_%d.c"
#define PNAME "Sully_%d"
#define CC "gcc -Wall -Wextra -Werror %s -o %s;./%s"
#define M(text) int main(void){text}
#define STRING "#include <stdio.h>%c#include <stdlib.h>%c#include <fcntl.h>%c#include <unistd.h>%c#define STR(x) char*s=#x;x%cint i = %d;%c#define NAME %cSully_%%d.c%c%c#define PNAME %cSully_%%d%c%c#define CC %cgcc -Wall -Wextra -Werror %%s -o %%s;./%%s%c%c#define M(text) int main(void){text}%c#define STRING %c%s%c%cSTR(%s)%c"
STR(M(if(!i) return (1);char name[0xff]; char pname[0xff];char cmd[0xfff];sprintf(name,NAME, i - 1);sprintf(pname,PNAME, i - 1);sprintf(cmd,CC,name, pname,pname);int fd = open(name, O_TRUNC | O_CREAT | O_RDWR, 0777);dup2(fd, 1);close(fd);fprintf(stdout,STRING,10,10,10,10,10,i-1,10,34,34,10,34,34,10,34,34,10,10,34,STRING,34,10,s,10);fclose(stdout);system(cmd);))
