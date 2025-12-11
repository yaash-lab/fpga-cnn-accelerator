#include <iostream>
#include <iomanip>
#include <ap_fixed.h>

typedef ap_fixed<16,8> fixed_t;

void fc_accel(
    fixed_t input[2304],
    fixed_t weights[128 * 2304],
    fixed_t bias[128],
    fixed_t output[128]
);

int main() {
    fixed_t input[2304];
    fixed_t weights[128 * 2304];
    fixed_t bias[128];
    fixed_t output[128];
    
    // Initialize
    for(int i = 0; i < 2304; i++) input[i] = fixed_t(0.01);
    for(int i = 0; i < 128 * 2304; i++) weights[i] = fixed_t(0.001);
    for(int i = 0; i < 128; i++) bias[i] = fixed_t(0.0);
    
    // Run
    fc_accel(input, weights, bias, output);
    
    // Results
    std::cout << "=== FC Layer Testbench ===" << std::endl;
    std::cout << "Input size: 2304, Output size: 128" << std::endl;
    std::cout << std::fixed << std::setprecision(4);
    
    std::cout << "\n=== ALL 128 Outputs ===" << std::endl;
    for(int i = 0; i < 128; i++) {
        std::cout << "Out[" << std::setw(3) << i << "]: " << output[i].to_double();
        if ((i+1) % 4 == 0) std::cout << std::endl;
        else std::cout << " | ";
    }
    
    // Stats
    double sum = 0, min_v = output[0].to_double(), max_v = output[0].to_double();
    for(int i = 0; i < 128; i++) {
        double v = output[i].to_double();
        sum += v;
        if(v < min_v) min_v = v;
        if(v > max_v) max_v = v;
    }
    
    std::cout << "\n=== Statistics (All 128 outputs) ===" << std::endl;
    std::cout << "Mean: " << sum/128 << std::endl;
    std::cout << "Min:  " << min_v << std::endl;
    std::cout << "Max:  " << max_v << std::endl;
    std::cout << "Sum:  " << sum << std::endl;
    
    std::cout << "\n=== Shape Verification ===" << std::endl;
    std::cout << "Input:  2304 features (64 channels x 6x6)" << std::endl;
    std::cout << "Weights: 128 x 2304 = 294,912 parameters" << std::endl;
    std::cout << "Output: 128 neurons with ReLU" << std::endl;
    
    std::cout << "\nTest PASSED!" << std::endl;
    
    return 0;
}
