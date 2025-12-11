// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Dec 10 17:07:52 2025
// Host        : fpga-tools.project.octfpga-pg0.cloudlab.umass.edu running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_58f6_lut_buffer_0_sim_netlist.v
// Design      : bd_58f6_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_58f6_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y0xh9134RsBng5etaGXwBVUEA8J2bWMgUTQDTIAitarHeeOiZsCqvqnqSMBLJzSAT8Clo2xSEdDb
f2T0bmuallNuAd4vpVjfpqZxOdLmUV+3X8aXUTr4KkIVjWQBC+K45w+OfnfdElcaUW1WQbp7AvaT
05bjWBH/BdJKBk0Kz8k=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PE7RpcxN5xLwFXFfGeLCerEjPkCaTxfWD0b+oprDoEGqctY+F7Wc4+NqdSUAG4JbLWR/Pc8Mvten
+K5WbuDTljggJrkieJAK3rBOK8BdubtGJNC4uQ5v2trZYixfg4cWld5Z1MOB9aGfI0nF082l9Fc1
oNJFrkGcenyozvDKcCrtwvJaYRweulCV8/ynKznNpn+AvYhnoluR06IxzZXoj14b7IZt4g/2m455
clbUPyf1qLHbJGSK/Rvl0/W7cB5xxs3pM9/5p3UZ1MPFflZOAeCDwlOgzpXGAzfCkl9cSVqnIFFm
Q3cDkAfbRmP4jbDuwO2EbXgpiNcvc0br8gVcbA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V73a/OJRlITsAnnyOJ7wtYI9yf/7gLrmQAWi1efFadTpN18wAOW5wcGb51JuXb/TOad9XvQaZxoY
I1ZZckK9R3kp0xHb3eRHqTEs38gIdB9DieJsPfcgrAgAh7N3AeXDhRXODyfLCVtmoF6cv0lmGI3F
6gKImN8nvzJnJHdYS0w=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DCcPCQlu9uE6EBAoASplmWq6o/1vaTK24YYikkUnuM7wUc+K6wrTEbkFivj5OqxF/zGGynv+kjob
I28B+W/69av/irvgfSaOkl5CUwgmAnYrJQd5zO7pvvK7YBJ/f93xJ/FmpQTogAblevs7NdJLp3g2
OjMs/8iwMyXJYb2YgHoEFYKN8iqqLfoE1FTy3G1JWKcwGAYvCl6xaaPp+oYT4c7L99IYhk6R8LBP
5s2r5TkwtZsEUda1DuYu5UkWe5K0DyTVUxajXsz/s/xuKDYMlzV72Q6wQBSnBiknt/jnVyDo1tW+
PGq16LOUpjH7iA8esxtuBNSsdeu0hMvHXuCk0Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nwGINoKaVugQKTFyoLZc9O4TFbtk1/YjUn+a0zrC86S6J/PE/JSOh+4Yfyc8eQ/WKAw+4uNuqCfu
xMoblhyJX/PlyEcylGam6sg3YG3KUGmi+YfHMkiy5TIq7RfDEHBwm0OHajhuCJo+X/6WxDGrk+PS
JQwDW5IPxNMsoAYvcfcnzoAzaBMZ2IOHG/dpyyZ9tggqfcMqg7t2BLQujqkegYCW4gY5rCPGeljI
4AGn2WPvX+9JN5GQNIRdoRh8Onlhi39C7f6rkpR/zl9AY5kpcq9JW6q9bZNUXWBSnGm4Qz7GqfRv
VWcK4i0ng1C6xuiSkLkN+3y6/j1T30YlwsMfwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hEsll6mGIaBLE7AxJMVNtolpxRIRkhMsR1xHRjohvcUv4jFzKCjUO8d3wAnCq+Pz8f91PWDGP2f8
vGvDzErKDDVww33sDh+czaUMpdCCZkXt02jx1NfASHgkhqZt48L0UuNktllZas8HQy1w28ioRL/7
3KzyZN4uQ0f8w82zbdxC6U1l1meuVs6Ymk3Nsfmr36ARxpZj/9mbYwpjCUYyUzvUJRzuQfrAg0Ug
NoZDuxYRFYh7nfwlzgujXfMnemYGWwvjSq+iGvBWkCedSDGyNW+1BepcrFfzMd0eKQwmcj8h07J6
R97hYRxcHh/xlYrOs7brn6ldE9gjFrrjzoo8iw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCn+A4p440uf9LYQwYUsNjUDkTOYDGJVSfBa72VZuxFlEtdCBsGMjyJlD71i9wfT+zo8h+uKo5qg
vdv6mNq8TlFLiiopLnEQiAavSCyjdKaqzw8udtBKGsJVh0jvWBiBGYR3s//q93WXtDm9YvhHTdgy
QyzPYSyta3qQBDVoFvr9QDfszU/AgD7tMB34LAvkpr+FTkjoCCJrveOtK2B2WHLDkSZUKkPVQ4z2
NkNE0C0TKTL07EoIHcBpTszfP8fVP255K0UDLBoKbNkya3Q/UqjG6bR9pNXI4n94ocrJxFUkJyc7
WjwNxUjgC0HL2CND2aA9LS0fnSdpZ/JZhvib0Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eQmhkruRac3U1ERXu1Se13kEfZn5KP07/7J3pWhxX9QDO3A6aHkXHeiaH+qtRq5D2WFtbDCyVd5o
yPb7cQ9Sf2K6uFN+DTniB0oRADGePTdy2g3FHV68hvgIVlFrc9uf2rfs2yWR6pds+LDyYHhnSlEJ
hayggxgMxA41kth5hR2kGSybXpDjpQylauMvP+MetSb/27syf7QWVbXFhfLQE64opyObtme8TiWj
5MsRktemiPbC/x2RmB+ZklSRAvWu35tDO9u3XZ/Kk6WG2Pqj607cIfA/TsqoxZ6522ktimOnveJA
pSE6WUmDIQaOZ6pXjVIv4GEXZX73ZA3wLhRrmL7QxfXqCAeqFjouROHvM8Zv9kOfFGuDEo44JQSg
frNFO+XzslBTB/aplI0UWXL5ak9uQ1BUPtBO7xedGF/B7KKNsOoTml/48MYOaM6/3vjqSeiVUbvK
VVOQg7nBLowDBuFhcmn2RlKHia3ldFgRHkvFeuIJs5w1Ca1q0zuPaDzZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gmsDEPC6u2G9YmnQc+V5rl/+mw4IztZGOLCaixhGfvI1t16GeLgoWqRktnjvSlEQbNzx7qnrDu3r
je4CfK2ZF54ZUMDX1QZd4bL54eK/AB3GiU3wZKUDtd9ZB5j4Oq5zWBU/nuHisg8FDEXkIndNgak5
cWycB82LoueWPC88cLKbbFasGsKFV3+Cn/sQ88RAmKtwlL2bwHvI+udevI4dY8w7//0nMejfXbdJ
QRGDs0h2SxkGs298aaM464WfmgQ63xcJn9AB5LuagH+a7BdhySu3RNfRzgSw5k3AYXJd3Q8Mht1s
ztXL0X+/yquUTzhcMBTfyicvWkiYRw6CxzjnDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
