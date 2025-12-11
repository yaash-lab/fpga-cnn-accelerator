#ifndef CONV2D_H
#define CONV2D_H

#include <ap_fixed.h>

// Fixed-point type: 16-bit with 8 fractional bits
typedef ap_fixed<16,8> data_t;

// Layer 1 parameters
#define L1_IN_CH 3
#define L1_OUT_CH 32
#define L1_SIZE 32
#define L1_KSIZE 3

void conv2d_layer1(
    data_t input[L1_IN_CH][L1_SIZE][L1_SIZE],
    data_t weights[L1_OUT_CH][L1_IN_CH][L1_KSIZE][L1_KSIZE],
    data_t bias[L1_OUT_CH],
    data_t output[L1_OUT_CH][30][30]
);

#endif
