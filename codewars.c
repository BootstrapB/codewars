#include <stdbool.h>
#include <stdio.h>
#include <string.h>

int lostSheep(const int *friday,const int* saturday, int total)
{
    int totalsheep = 0;
    while(*friday)
    {
        totalsheep+=*friday;
        ++friday;
    }
    while(*saturday)
    {
        totalsheep+=*saturday;
        ++saturday;
    }
    return total-totalsheep;
}
int main()
{
    int test = lostSheep({1,2,0},{3,4,0},15);
    printf("%i\n",test);

    return 0;
}
