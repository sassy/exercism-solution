#include "hamming.h"

int compute(const char *lhs, const char *rhs) {
    int ret = 0;
    for (;*lhs && *rhs ; lhs++, rhs++) {
        if (*lhs != *rhs) {
            ret++;
        }
    }

    return (*lhs||*rhs) ? -1 : ret;
}
