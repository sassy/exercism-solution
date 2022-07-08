#include "isogram.h"
#include <stdlib.h>
#include <ctype.h>

bool is_isogram(const char phrase[])
{
    int i;
    unsigned long long mask = 0;
    if (phrase == NULL) return false;
    if (phrase[0] == '\0') return true;
    for (i = 0; phrase[i] != '\0'; i++) {
        if (phrase[i] == ' ' || phrase[i] == '-') continue;
        if ((mask & (1 << (tolower(phrase[i]) - 'a'))) != 0) {
            return false;
        }
        mask |= 1 << (tolower(phrase[i]) - 'a');
    }
    return true;
}
