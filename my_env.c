#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define NUM_OF(n) (sizeof(n)/sizeof(n[0]))
#define Print     printf
#define Error     printf


const char* MakeFile = 
"all:\n"
"\tgcc -o myenv my_env.c";

struct env 
{
        char name[128];
};

static struct env ENV_V[] = 
{
        {"DVLP_DIR"},
        {"DVLP_LIB"},
        {"DVLP_INC"},
        {"DVLP_BIN"},
        {"DVLP_MYENV"},
        {"LD_LIBRARY_PATH"},
        {"PKG_CONFIG_PATH"},

};

int 
write_mk(const char* file_name) {
        FILE* F_mk = NULL;

        F_mk = fopen(file_name, "w");
        if (F_mk == NULL) {
                Error("Can't open %s\n", file_name);
                exit(0);
        }

        fwrite(MakeFile, 1, strlen(MakeFile), F_mk);
        fclose(F_mk);
        return 0;
}
        
int 
print_env(void) {
        char *s = NULL;
        int i, ret;

        for (i = 0; i < NUM_OF(ENV_V); i++) {
                s = getenv(ENV_V[i].name);
                if (NULL != s) {
                        Print("%s = %s \n", ENV_V[i].name, s); 
                }
        }
        return 0;
}



int 
main(int argc, char* argv[]) {
        int opt, ret;
        
        while ((opt = getopt(argc, argv, "maupt:")) != -1) {
                switch(opt) {
                        case 'a':           
                                break;
                        case 'm':            
                                write_mk("myenv.mk");
                                exit(0);
                                break;
                        case 'p':           
                                print_env();
                                exit(0);
                                break;
                        case 't':
                                //t = atoi(optarg);
                                break;
                        default:
                                Error("Not support\n");                                
                                exit(1);
                                break;
                }
        } 


        return 0;
}




