TARGET := hw
PLATFORM := xilinx_u280_gen3x16_xdma_1_202211_1

VPP := v++
CLFLAGS := -t $(TARGET) --platform $(PLATFORM) --save-temps

KERNEL_XO := vadd_kernel.xo
XCLBIN := vadd_kernel.xclbin

.PHONY: all clean

all: $(XCLBIN)

$(KERNEL_XO): vadd_kernel.cpp
	$(VPP) $(CLFLAGS) -c -k vadd_kernel vadd_kernel.cpp -o $(KERNEL_XO)

$(XCLBIN): $(KERNEL_XO)
	$(VPP) $(CLFLAGS) -l $(KERNEL_XO) -o $(XCLBIN)

clean:
	rm -rf *.xo *.xclbin *.log _x .Xil
