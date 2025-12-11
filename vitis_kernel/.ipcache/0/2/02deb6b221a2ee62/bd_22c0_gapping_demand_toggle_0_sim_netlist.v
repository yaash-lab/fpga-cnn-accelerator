// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Dec 10 16:28:18 2025
// Host        : fpga-tools.project.octfpga-pg0.cloudlab.umass.edu running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_22c0_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_17 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2336)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AwgT1w1iGMNt5qcn0UbUKMyeMrn8wS4W6JeRGdVtfWpiDEQbmUC1mKjp2OgCbr6h8gRqchcu9PJK
NTFKfbGJNqU3R/Mw+jVOZN/MbDt9FHFNj3hx1Q/2IcXU1sfsNk8yleyUEcAuASw+SGHg7w60Cjfo
1wUGsLi9BV0tmLLEvKsN0d7GTA8cEMZTV0ywF0wPYhQuTYgxHDFpqSXRxGzUBi63nX7rdDvQO7Kb
7gXliOjizozLMHJQkDtKEk4weg/jKgYwRJXVC2HgEfy1M9CxXmQvvRXMKp/r+zFhp6+841JLUiS0
l7ktCNS9XT7fPQd1YMMNDZMKTlqKbGbmw51GLQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkCGVUbibiIG+rXz1vszjQkRIt8Emnbo1kjGc66XCiC+mpZ5Or12MdqKz2w85aezeqDKBB+UaxXp
WoNt2y4lPKc5Ctp9RHyyDFDmgIajoyeRYxaHhlVrU6Rq218dPMq7yx+K+Nd55d+iVRwHwSGfMHJs
DjkrslMosafDtvr8A62BQkQqtaKF0Uqb5Jt0iNJLJmYHcDVN5LoN49rytzZMI8OB8yoSK7qE1Ekj
YHLY/GESFFDBPYdZuBwPZUIlDoyyS8FkixgpuXQssiyuSxoLij5DM5r0j15hBCp9XwPZIhoY5U74
5SYQeXaeoK67IEtlUuAwbnqY4n8hS3e14KoC0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2832)
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
