#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int find_outlier(const int *values, size_t count)
{
    int flag;
    int even = 0;
    int odd = 0;
    int i = 0;
    for(i=0; i<3;++i)
    {
        if(values[i]%2==0)
            ++even;
        else
            ++odd;
    }
    if(even>odd)
        flag = 0;
    else
        flag = 1;

    for(i=0; i<count;++i)
    {
        if(flag!=(values[i]%2))
            return values[i];
    }


    return 0;
}
int main()
{
    int values[]= {2,4,0,100,4,11,2602,36};
    size_t count = sizeof(values)/sizeof(values[0]);
    int test = find_outlier(values,count); 

            
    printf("%i\n",test);
    return 0;
}
