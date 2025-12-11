# Create HLS project
open_project conv_accel_hls
set_top conv_accel
add_files conv_accel.cpp
add_files -tb conv_accel_tb.cpp

# Create solution
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 10 -name default

# Run C simulation
csim_design

# Run synthesis
csynth_design

# Export RTL
export_design -format ip_catalog

exit
