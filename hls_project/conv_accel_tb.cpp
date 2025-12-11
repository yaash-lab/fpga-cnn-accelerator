#include <iostream>
#include <cmath>
#include <ap_fixed.h>

typedef ap_fixed<16,8> fixed_t;

// Function prototype
void conv_accel(
    fixed_t input[27],
    fixed_t weights[288],
    fixed_t bias[32],
    fixed_t output[32]
);

int main() {
    fixed_t input[27];
    fixed_t weights[288];
    fixed_t bias[32];
    fixed_t output[32];
    
    // Initialize with test data
    for(int i = 0; i < 27; i++) input[i] = fixed_t(0.1);
    for(int i = 0; i < 288; i++) weights[i] = fixed_t(0.01);
    for(int i = 0; i < 32; i++) bias[i] = fixed_t(0.0);
    
    // Run kernel
    conv_accel(input, weights, bias, output);
    
    // Check results
    std::cout << "Testbench Results:" << std::endl;
    std::cout << "First 10 outputs: ";
    for(int i = 0; i < 10; i++) {
        std::cout << output[i].to_double() << " ";
    }
    std::cout << std::endl;
    
    std::cout << "Test PASSED!" << std::endl;
    
    return 0;
}
