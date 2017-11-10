#include <stdbool.h>
#include <stdio.h>
#include <string.h>

bool xo(const char* str)
{
    int numx = 0;
    int numo = 0;
    while(*str)
    {
        if(*str=='x')
        {
            ++numx;
        }
        if(*str=='o')
        {
            ++numo;
        }
        ++str;
    }
    if(numx==numo)
    {
        return true;
    }
    else
    {
        return false;
    }
}

int main()
{
    bool test = xo("xooxx");
    printf("%i\n",test);

    return 0;
}
