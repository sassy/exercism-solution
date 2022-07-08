#include "resistor_color.h"

int color_code(resistor_band_t color)
{
    return (int)color;
}

resistor_band_t *colors()
{
    int i;
    static resistor_band_t colors[COLOR_NUM];
    for (i = 0; i < COLOR_NUM; i++) {
        colors[i] = i;
    }
    
    return colors;
}
