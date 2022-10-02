#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define NAME  "Grace_kid.c"
#define STR(x) char*s=#x;x
#define M(text) int main(void){text}
/*hi 42*/
STR(M(int fd = open(NAME, O_TRUNC|O_CREAT|O_WRONLY, 0777);if (fd < 0 )return 1;dup2(fd, 1);close(fd);fprintf(stdout, "#include <stdio.h>\n#include <fcntl.h>\n#include <unistd.h>\n#define NAME  \"Grace_kid.c\"\n#define STR(x) char*s=#x;x\n#define M(text) int main(void){text}\n/*hi 42*/\nSTR(%s)\n",s);))
