#include "hamming.h"

int compute(const char *lhs, const char *rhs) {
    int ret = 0;
    for (;*lhs != '\0' && *rhs != '\0' ; lhs++, rhs++) {
        if (*lhs != *rhs) {
            ret++;
        }
    }

    return (*lhs != '\0' || *rhs != '\0') ? -1 : ret;
}
