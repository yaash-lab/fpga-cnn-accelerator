#include <ap_fixed.h>

typedef ap_fixed<16,8> fixed_t;

// MaxPool 2x2 kernel
void maxpool_accel(
    fixed_t input[32 * 30 * 30],    // 32 channels, 30x30
    fixed_t output[32 * 15 * 15]    // 32 channels, 15x15
) {
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE mode=m_axi depth=28800 port=input
    #pragma HLS INTERFACE mode=m_axi depth=7200 port=output
    
    const int IN_CH = 32;
    const int IN_SIZE = 30;
    const int OUT_SIZE = 15;
    const int POOL_SIZE = 2;
    
    // Process each channel
    for(int c = 0; c < IN_CH; c++) {
        #pragma HLS LOOP_TRIPCOUNT min=32 max=32
        
        // Output spatial dimensions
        for(int oh = 0; oh < OUT_SIZE; oh++) {
            #pragma HLS LOOP_TRIPCOUNT min=15 max=15
            
            for(int ow = 0; ow < OUT_SIZE; ow++) {
                #pragma HLS PIPELINE II=1
                #pragma HLS LOOP_TRIPCOUNT min=15 max=15
                
                fixed_t max_val = fixed_t(-1000);  // Initialize to very small
                
                // Pool window
                for(int ph = 0; ph < POOL_SIZE; ph++) {
                    for(int pw = 0; pw < POOL_SIZE; pw++) {
                        int ih = oh * POOL_SIZE + ph;
                        int iw = ow * POOL_SIZE + pw;
                        
                        int input_idx = c * IN_SIZE * IN_SIZE + ih * IN_SIZE + iw;
                        fixed_t val = input[input_idx];
                        
                        if(val > max_val) {
                            max_val = val;
                        }
                    }
                }
                
                int output_idx = c * OUT_SIZE * OUT_SIZE + oh * OUT_SIZE + ow;
                output[output_idx] = max_val;
            }
        }
    }
}
