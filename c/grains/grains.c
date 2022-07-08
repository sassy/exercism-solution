#include "grains.h"

uint64_t square(uint8_t index)
{
    if (index < 1ull || index > 64ull) {
        return 0ull;
    }
    if (index == 1ull) {
        return 1ull;
    }
    return 2 * square(index - 1);
}

uint64_t total(void)
{
    int i, sum = 0;
    for (i = 1; i <= 64; i++) {
        sum += square(i);
    }

    return sum;
}
