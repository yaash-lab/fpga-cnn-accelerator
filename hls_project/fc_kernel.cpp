#include <ap_fixed.h>

typedef ap_fixed<16,8> fixed_t;

// Fully Connected Layer
// Input: 2304 features (64 * 6 * 6 after pool2)
// Output: 128 neurons
void fc_accel(
    fixed_t input[2304],
    fixed_t weights[128 * 2304],  // 128 x 2304
    fixed_t bias[128],
    fixed_t output[128]
) {
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE mode=m_axi depth=2304 port=input
    #pragma HLS INTERFACE mode=m_axi depth=294912 port=weights
    #pragma HLS INTERFACE mode=m_axi depth=128 port=bias
    #pragma HLS INTERFACE mode=m_axi depth=128 port=output
    
    // Compute for each output neuron
    for(int o = 0; o < 128; o++) {
        #pragma HLS PIPELINE II=1
        
        fixed_t sum = bias[o];
        
        // Dot product with input
        for(int i = 0; i < 2304; i++) {
            #pragma HLS LOOP_TRIPCOUNT min=2304 max=2304
            sum += input[i] * weights[o * 2304 + i];
        }
        
        // ReLU activation
        output[o] = (sum > 0) ? sum : fixed_t(0);
    }
}
