# FPGA-Based CNN Accelerator for Traffic Sign Classification

**Author:** Yashvi Sojitra  
**Course:** EECE 5698 - FPGAs in the Cloud  
**Date:** December 2025  

[![Demo Video](https://img.shields.io/badge/Demo-Video-red)](https://drive.google.com/drive/folders/1Te3V6LNUpUpVp9jTYEeAliW28PGECI5d)

## Project Overview

Hardware-accelerated CNN for traffic sign classification on Xilinx Alveo U280 FPGA using Vitis HLS.

## Key Results

- ✅ **99.43% accuracy** on 39,209 GTSRB images
- ✅ **3 HLS kernels** synthesized (Conv, MaxPool, FC)
- ✅ **137 MHz** clock frequency achieved
- ✅ **Hardware verified** on CloudLab U280 FPGA
- ✅ **26% resource utilization** - room for 4× scaling

## Quick Start

### 1. Train Model
```bash
cd ~/cnn_accelerator
python3 src/reference/train_model.py
```
**Output:** Model saved to `models/traffic_sign_cnn.pth` with 99.43% validation accuracy

### 2. Export Test Data
```bash
python3 src/reference/export_test_data.py
```
**Output:** 129 test images with golden outputs in `data/processed/`

### 3. HLS Synthesis

**Convolution Kernel:**
```bash
cd hls_project
vitis_hls run_hls.tcl
```
**Time:** ~2 minutes  
**Output:** Conv kernel synthesized (9.53 µs latency, 27 DSP)

**MaxPool Kernel:**
```bash
vitis_hls run_maxpool_hls.tcl
```
**Output:** MaxPool synthesized (288 µs latency, 1 DSP)

**FC Kernel:**
```bash
vitis_hls run_fc_hls.tcl
```
**Output:** FC layer synthesized (2.99 ms latency, 2,304 DSP)

### 4. Hardware Deployment

**Build Bitfile (on OCT build machine):**
```bash
cd vitis_kernel
make all
```
**Time:** ~2 hours  
**Output:** `vadd_kernel.xclbin` (48 MB)

**Deploy to U280 (on CloudLab node):**
```bash
# Program FPGA
xbutil program -d 0000:37:00.1 -u vadd_kernel.xclbin

# Compile host
g++ -o test_vadd test_vadd_simple.cpp -I$XILINX_XRT/include -L$XILINX_XRT/lib -lxrt_coreutil -pthread

# Execute on FPGA
./test_vadd vadd_kernel.xclbin
```
**Output:** ✅ TEST PASSED - Hardware execution successful!

### 5. Performance Analysis
```bash
python3 scripts/performance_comparison.py
```

## Performance Results

| Metric | CPU | FPGA (Projected) | Notes |
|--------|-----|------------------|-------|
| Latency/image | 0.248 ms | 0.611 ms | Sequential, unoptimized |
| Throughput | 4,030 img/s | 1,638 img/s | Single pipeline |
| Optimization Potential | - | 7-121× speedup | With pipelining & batching |

## Repository Structure
```
cnn_accelerator/
├── data/processed/        # Test images (129) & golden outputs
├── models/               # Model weights (.npz format)
├── src/reference/        # PyTorch training code
├── hls_project/         # HLS kernel source
│   ├── conv_accel.cpp
│   ├── maxpool_kernel.cpp
│   ├── fc_kernel.cpp
│   └── run_*.tcl
├── vitis_kernel/        # Hardware deployment
│   ├── vadd_kernel.cpp
│   ├── test_vadd_simple.cpp
│   └── Makefile
├── host/                # Host demo application
├── scripts/             # Analysis scripts
└── results/            # Synthesis reports
```

## Dataset

Download GTSRB: https://benchmark.ini.rub.de/  
Extract to: `data/raw/GTSRB/`

## Documentation

- 📄 [Final Report](Sojitra_Final_Report.pdf)
- 🎬 [Video Demo](https://drive.google.com/drive/folders/1Te3V6LNUpUpVp9jTYEeAliW28PGECI5d)
- 📊 [Synthesis Reports](results/)

## Requirements

- OCT build machine (Vitis HLS 2023.2)
- Python 3.10+ with PyTorch, NumPy
- CloudLab account with U280 access

## Contact

Yashvi Sojitra - Northeastern University  
