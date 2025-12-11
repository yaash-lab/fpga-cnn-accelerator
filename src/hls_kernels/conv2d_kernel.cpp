#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_stream.h>

// Fixed-point type: 16-bit with 8 integer bits, 8 fractional bits
typedef ap_fixed<16,8> data_t;

// Simple 2D convolution kernel for Layer 1
// Input: 3x32x32, Kernel: 3x3, Output: 32x30x30
void conv2d_kernel(
    data_t input[3072],      // 3*32*32 = 3072
    data_t weights[864],     // 32*3*3*3 = 864
    data_t bias[32],
    data_t output[28800]     // 32*30*30 = 28800
) {
    #pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=weights offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=bias offset=slave bundle=gmem2
    #pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem3
    #pragma HLS INTERFACE s_axilite port=input bundle=control
    #pragma HLS INTERFACE s_axilite port=weights bundle=control
    #pragma HLS INTERFACE s_axilite port=bias bundle=control
    #pragma HLS INTERFACE s_axilite port=output bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    
    const int IN_CH = 3;
    const int OUT_CH = 32;
    const int IN_SIZE = 32;
    const int K_SIZE = 3;
    const int OUT_SIZE = 30;
    
    // Output channels
    OUT_CH_LOOP:
    for(int oc = 0; oc < OUT_CH; oc++) {
        #pragma HLS LOOP_TRIPCOUNT min=32 max=32
        
        // Output spatial dimensions
        OUT_H_LOOP:
        for(int oh = 0; oh < OUT_SIZE; oh++) {
            #pragma HLS LOOP_TRIPCOUNT min=30 max=30
            
            OUT_W_LOOP:
            for(int ow = 0; ow < OUT_SIZE; ow++) {
                #pragma HLS LOOP_TRIPCOUNT min=30 max=30
                #pragma HLS PIPELINE II=1
                
                data_t sum = bias[oc];
                
                // Input channels
                IN_CH_LOOP:
                for(int ic = 0; ic < IN_CH; ic++) {
                    
                    // Kernel
                    K_H_LOOP:
                    for(int kh = 0; kh < K_SIZE; kh++) {
                        K_W_LOOP:
                        for(int kw = 0; kw < K_SIZE; kw++) {
                            
                            int ih = oh + kh;
                            int iw = ow + kw;
                            
                            int input_idx = ic * IN_SIZE * IN_SIZE + ih * IN_SIZE + iw;
                            int weight_idx = oc * IN_CH * K_SIZE * K_SIZE + 
                                           ic * K_SIZE * K_SIZE + 
                                           kh * K_SIZE + kw;
                            
                            sum += input[input_idx] * weights[weight_idx];
                        }
                    }
                }
                
                // ReLU activation
                data_t result = (sum > 0) ? sum : data_t(0);
                
                int output_idx = oc * OUT_SIZE * OUT_SIZE + oh * OUT_SIZE + ow;
                output[output_idx] = result;
            }
        }
    }
}
