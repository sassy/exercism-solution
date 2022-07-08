#include "difference_of_squares.h"

unsigned int sum_of_squares(unsigned int number)
{
    int ret;
    for (ret = 0; number > 0;number--) {
        ret += number * number;
    }
    return ret;
}

unsigned int square_of_sum(unsigned int number)
{
    int sum;
    for (sum = 0; number > 0;number--) {
        sum += number;
    }
    return sum * sum;
}

unsigned int difference_of_squares(unsigned int number)
{
    return square_of_sum(number) - sum_of_squares(number);
}
