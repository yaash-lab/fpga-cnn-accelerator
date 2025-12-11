open_project maxpool_hls
set_top maxpool_accel
add_files maxpool_kernel.cpp
add_files -tb maxpool_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 10 -name default
csim_design
csynth_design
export_design -format ip_catalog
exit
