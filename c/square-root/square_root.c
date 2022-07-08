#include "square_root.h"

int square_root(int radicand)
{
    /* Binary numeral system (base 2) */
    int x = radicand;
    int c = 0;
    int d = 1 << 30;
    while (d > radicand)
        d >>= 2;

    while (d != 0) {
        if (x >= c + d) {
            x -= c + d;
            c = (c >> 1) + d;
        } else {
            c >>= 1;
        }
        d >>= 2;
    }
    return c;
}
