open_project fc_hls
set_top fc_accel
add_files fc_kernel.cpp
add_files -tb fc_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 10 -name default
csim_design
csynth_design
export_design -format ip_catalog
exit
