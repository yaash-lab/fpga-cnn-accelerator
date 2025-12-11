-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Dec 10 15:58:36 2025
-- Host        : fpga-tools.project.octfpga-pg0.cloudlab.umass.edu running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_aclk_kernel_00_cont_adapt_0_sim_netlist.vhdl
-- Design      : bd_22c0_aclk_kernel_00_cont_adapt_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
AyywBWU3I0zQc5RgrR3iChpKXBvMdAMA27xhh+MGe6Mh5tRmo/57cgaVWWooa4q9CmpFKczA4/mG
svfrQJgEag==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
FXgvu/Ju/3y2Q8ovtwzDK3JsyWtVUt3PS668MtsIey+72PF+sW5ddRCoSHKKZb3YYaeTtGJYWm66
NtQPyIZdVZmJdMRBGkOTpSNSqxRhcbJpqtnDUs/ZmUY0cZYoGc6VvoxUM/c199/gpwt6OTanzcMJ
JiaciI7dnneQqC/bSTk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GYQmBI722qMjJWUzYrBkDSBJhMhoaNc/1lNtZDSH1la2aFsVzEip7QfQ4GLAWt4g5J1o6aLpwKWk
OI4rbDRp+A4f/zX753kPU5uT4121eCks8u8EIJmTZuanOBB5qyrkziVfnRNg1HpF2VJ9+YgJFwWf
qTIOkF6KiGuG3Un8OwqYx8nPvhjcPJthdhZn6L9Ww7S2lrAPeAV+MeAaCIumHosVsbwy6lvw9OUf
kEJz34ZYPagX4pdtjixCAPMZ2xN3mwr97aGqQSb3zo1S2uCs8A0m1IVst3rQIrdbTjD10gTrXqJW
u98o3qQb2Xfn8rhAsMAVkCDsLcu0RSAgsmtoKg==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
awZfD5sS6wXogZPJl5LHPZMttRTvu8nUMSmLLkxFMx3Pc2BW5ubYrL1e1lHRYYyHwXrqOZXlJFev
nA51AmrJqjQpqEqAv0jCBzGTyb3DZiPSJbK+dsjQSotZDmSH2lTQ+tSvvZ+lgmq7K/A/nfG5BiRe
7POKFw6/G+vqhDlGCRzKfdGbAEsBPq+2wdcombJa5Fd159RS8aJM7uhZgHCt7osCOALOhv5tlnqJ
krA+hOF0yevtXcsi5NKx4fIjm/ykCrrsrh1k36z0GjQwQxybZBwGhp1E9rsxFfKI1brBxsakKV8f
WZTrLzVQhPkRNWx3/46Zz/zDZfxcSWBVV2ZMug==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
VXQasTBG9shgYH2gH0qz0Yc+uw3zU3aSd/WGie0aEDWNUmEJFYhlvljQQBuevhEBTvcDHWmsZ1yo
SnMX+FBcYz1201CnVxpSemXo1p65r6Mhr5XptqSQiamZ7jSXaGoEYcVn0Wj0f/UmzoL2I1w5QzWS
dpGU1uXvPvv7IO/gdvuXIzvPwQtc9S0v+ktmQetDwXmh3y40DI+jKCmOZQFN8uoGk+2mHPzzoMMv
JyV0P40BdVP3qp2lSJyzhOuzWtkXpW82ge3jFqv7WBuODu2IBH/TMhdGn0IKNJq9FWEzgPe9gLiE
0kpVCipgqMCQUBWkMkOMZXudWiFCdNYX1I2trA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
dTdpoe4SogJMN3GFRUyEh1d9OlwzQuE/wDpqK0CQnna7vbUCR4o5fxs7KD7rBoclsLHNb2wXo+2l
VwSBLpJBIG7gA2VyUOyqdyDUTZ1cGMBAr5wFYRAd5opbpFWrS0TG4FE0WFxvCU7NS3bblfiwX1Z8
5ibWdlaIZbWjyxjuZgo=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fKynujfRgwcb62ZQvbXCI63ZrNRBekYnDwE0bn1UnQAQHczPaMhOm45bfdZRZiyHMIWSwQjOuSFb
ocDGcz2FhWVtLjBMk2OlSj2qyscl2bbXnzoeHspbhDe0dYxh8fn/9n6onEExTRKXgYuYI37vGpvo
MIlut7iL5VIC6zoxLdtrZZaWJRfguQplAmuAUsv3p39VxHELD4v3j+6vv/i4N6q+gVR4KOMyddQC
ggiotsFObvd3KY6pfb4i7wSgj8TplT3uDv65Xkvk2NPKTygHU9mlZvDRtKxDvsCL7/1UOIjgVvua
6bZNJojrE7+sFVbgF0cvfm7vL/Cwgzax/GmIkA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
EgTCocaIITNNFz8bK/lPvfNuRE7Y4kxq+HC0/PBrEd8vD8od3ahyOKr0g4zaX7iRXbFffAtXUUlO
rtfukr4iiQfztiWn0+EygKAzO4+oVsYHZNUlOOeq3dBxWVWELwV7PdN6TX3QR5gmddGLhw4puD8W
ah2bsZPnh0GElbFC9w4teR4HMDRw6ACP6Z4MlM/QrzXA33UDI/OtlgMIxQqlSTqdKmR2Y1UiOhCJ
v6yXAN7UO+HgFQ7BuHYPMjiUaL1FL3t1Qgmkigtey2pQ/X5TriXL69Z0oLik1xjibdf5pxjv1RqL
O0fjv08eGYZ2aRymOkJo3llorgODGMsxG6erKg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 864)
`protect data_block
NOwv1syRky5Z1XmRLH+UfqRwS+TcKQp/8xuZ/eESvs/gs3v0V8BcXjU436xxkpn/njP+iY0YWcvV
e4m1iRqhz01QwPavC8Xsa7cRRWLGx7vhDJ/aY0Kxqr0V3fdX+BVKKlktmjs3EGLJ2wDMflEYhYX5
WT7C7DLOWpTKChvILqIoCCSq/Ne8O9OJYtPs565s81xBiochboK2PdiLVPiF+jHFcXgDA3EZ+A8n
x1MpR+bWkeRvMuTFoAB9Y6aWL4vT1ShHcEOTCHziu/P8yj4kAlv9TJPkIdwJThp49Ib/8OJNnJgD
vbKJg2Xe9WxGjCP1b+zn5zv/UhMCWNsUWAFdVD8r3rmDUVOCwJau5VG8CNanqQPAS6MOFk9N7exe
zaoOHbsYsLaEaBKIOsehZZIHRiUaqsDDd3mKA1lg0xwAqZSipouM1ryGqPFrPINoH7b2zCxCgRDC
mjrYZy8YttoZDv/XN7wfQPICVq0DO2YVLzDgw5xCAhVACeN+x61DKTEQUlxi/xkNyu1q76JT9PWB
Gc8929+w+3bsvj1yRj88nnTD0K+H/yRXo3dfyYD32dKnogzZQ2T1fOTmIPdbI9SGn1A0sElvn5mQ
kpxr56jA5ChUiPy0Ct2/RCxyZITFQ3qzOcyX6nAAt0rT3uh7t0uSYlFon8Msv8JnoR5I5EZ6Qpd0
bULulkoyURd36hCJ45iE24zGFwM3cmQ3w90lNY/lamX0hwJfl/u9UWLH8ma4bnz0p/NsPt1+5kqe
WUmAlpPDpoK1F5Vq4CGeytUqy13oXEHIDY2JQIRzuqtWJrOo3rMLB6gx3yebDNfVCvDtXBamDZU+
3VKPiHVzr/B/HLbOxeazl50lC0oPVM4kEG1l5QfvcGp7ku8QxCvHjaQfRtVui+JZIPUhmeqqcOHa
k/l4EeyRxEJFV9bWMa6x3mAMVDqsacb5l7fSzzllYzRLe4oU0AUHh0cAZkzmrKYmiGpz9e+KF7xJ
9qbYz4/t3xZ5pOem1j8QDMcpiZRI2pL0jNn4vNTwdl6Smt8BR2fU56QRae3FQzNq04TYv97aINT3
4BKLtLFsudhj0p5D0BO+39YiKKSqTa4NsLltRWQ57ANN4KJYwaqWicAToCtb0saNp0cppDSl6u2x
pFsoKrsIUVJ4
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0_aclk_kernel_00_cont_adapt_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clk_metadata_adapter_v1_0_0,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of inst : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 CLOCK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_aclk_kernel_00_0_clk_out1_buf, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_out : signal is "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_out : signal is "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_metadata_adapter_v1_0_0
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
