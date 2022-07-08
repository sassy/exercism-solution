#include "armstrong_numbers.h"

static int power(int base, int exponents)
{
    int i = 0;
    int ret = base;
    for (i = 1; i != exponents; i++) {
        ret *= base;
    }
    return ret;
}

int is_armstrong_number(int candidate)
{
    int i = 0;
    int j;
    int ret[256];
    int tmp = 0;
    int tmp_candidate = candidate;

    for (i = 0; tmp_candidate != 0; tmp_candidate /= 10, i++) {
        ret[i] =  tmp_candidate % 10;
    }
    for (j = i; j != 0; j--) {
        tmp += power(ret[j-1], i);
    }

    return tmp == candidate;
}
