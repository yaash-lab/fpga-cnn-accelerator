#include <ap_int.h>

// Simple vector add kernel to test hardware deployment
extern "C" {
void vadd_kernel(
    const int* in1,    // Read-Only Vector 1
    const int* in2,    // Read-Only Vector 2
    int* out,          // Output Result
    int size           // Size in integer
) {
    #pragma HLS INTERFACE m_axi port=in1 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=in2 bundle=gmem1
    #pragma HLS INTERFACE m_axi port=out bundle=gmem0
    
    for (int i = 0; i < size; i++) {
        #pragma HLS PIPELINE II=1
        out[i] = in1[i] + in2[i];
    }
}
}
