#include <ap_fixed.h>

typedef ap_fixed<16,8> fixed_t;

// Simple convolution accelerator - processes one output pixel
void conv_accel(
    fixed_t input[27],      // 3x3x3 input patch (3 channels)
    fixed_t weights[288],   // 32 output channels x 3x3x3
    fixed_t bias[32],
    fixed_t output[32]      // 32 output values
) {
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE mode=m_axi depth=27 port=input
    #pragma HLS INTERFACE mode=m_axi depth=288 port=weights
    #pragma HLS INTERFACE mode=m_axi depth=32 port=bias
    #pragma HLS INTERFACE mode=m_axi depth=32 port=output
    
    // Compute convolution for each output channel
    for(int oc = 0; oc < 32; oc++) {
        #pragma HLS PIPELINE
        fixed_t sum = bias[oc];
        
        for(int i = 0; i < 27; i++) {
            sum += input[i] * weights[oc * 27 + i];
        }
        
        // ReLU activation
        output[oc] = (sum > 0) ? sum : fixed_t(0);
    }
}
