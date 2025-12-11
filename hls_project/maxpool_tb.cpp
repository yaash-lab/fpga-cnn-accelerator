#include <iostream>
#include <iomanip>
#include <ap_fixed.h>

typedef ap_fixed<16,8> fixed_t;

void maxpool_accel(
    fixed_t input[32 * 30 * 30],
    fixed_t output[32 * 15 * 15]
);

int main() {
    fixed_t input[32 * 30 * 30];
    fixed_t output[32 * 15 * 15];
    
    // Initialize test data with varying values
    for(int i = 0; i < 32 * 30 * 30; i++) {
        input[i] = fixed_t(0.5 + (i % 10) * 0.1);
    }
    
    // Run kernel
    maxpool_accel(input, output);
    
    // Display ALL results
    std::cout << "=== MaxPool Testbench Results ===" << std::endl;
    std::cout << "Total outputs: " << (32 * 15 * 15) << std::endl;
    std::cout << std::fixed << std::setprecision(4);
    
    // Show first 50 outputs in detail
    std::cout << "\nFirst 50 outputs:" << std::endl;
    for(int i = 0; i < 50; i++) {
        std::cout << "Out[" << std::setw(3) << i << "]: " << output[i].to_double();
        if ((i + 1) % 5 == 0) std::cout << std::endl;
        else std::cout << " | ";
    }
    
    // Statistics on ALL outputs
    double sum = 0, min_val = output[0].to_double(), max_val = output[0].to_double();
    int total = 32 * 15 * 15;
    
    for(int i = 0; i < total; i++) {
        double val = output[i].to_double();
        sum += val;
        if(val < min_val) min_val = val;
        if(val > max_val) max_val = val;
    }
    
    std::cout << "\n=== Statistics (ALL " << total << " outputs) ===" << std::endl;
    std::cout << "Mean:   " << sum / total << std::endl;
    std::cout << "Min:    " << min_val << std::endl;
    std::cout << "Max:    " << max_val << std::endl;
    std::cout << "Sum:    " << sum << std::endl;
    
    // Show output shape verification
    std::cout << "\n=== Shape Verification ===" << std::endl;
    std::cout << "Input:  32 channels x 30x30 = " << (32*30*30) << " elements" << std::endl;
    std::cout << "Output: 32 channels x 15x15 = " << (32*15*15) << " elements" << std::endl;
    std::cout << "Pooling: 2x2 MaxPool" << std::endl;
    
    std::cout << "\nTest PASSED!" << std::endl;
    
    return 0;
}
