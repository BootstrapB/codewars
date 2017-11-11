#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* replaceNth(const char* text, int n, char oldValue, char newValue)
{
    int count = 1;
    char *answerstr = malloc(strlen(text)*sizeof(char));
    char *ptr = answerstr;
    strcpy(answerstr,text);
    while(*answerstr)
    {
        if(*answerstr==oldValue && !(count%n))
        {
            *answerstr=newValue;
        }
        ++count;
        ++answerstr;
    }
    return ptr;
}


int main()
{
    char* test = replaceNth("Vader said: No, I am your father!",2,'a','o');
    printf("%s\n",test);
    free(test);
    return 0;
}
