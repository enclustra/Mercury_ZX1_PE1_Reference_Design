# ----------------------------------------------------------------------------------------------------
# Copyright (c) 2024 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------------------------

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]
 
# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
# ----------------------------------------------------------------------------------

# Anios A
set_property -dict {PACKAGE_PIN AF19  IOSTANDARD LVCMOS25  } [get_ports {IOA_D0_P}]
set_property -dict {PACKAGE_PIN AF20  IOSTANDARD LVCMOS25  } [get_ports {IOA_D1_N}]
set_property -dict {PACKAGE_PIN AE18  IOSTANDARD LVCMOS25  } [get_ports {IOA_D2_P}]
set_property -dict {PACKAGE_PIN AF18  IOSTANDARD LVCMOS25  } [get_ports {IOA_D3_N}]
set_property -dict {PACKAGE_PIN AE20  IOSTANDARD LVCMOS25  } [get_ports {IOA_D4_P}]
set_property -dict {PACKAGE_PIN AE21  IOSTANDARD LVCMOS25  } [get_ports {IOA_D5_N}]
set_property -dict {PACKAGE_PIN AD18  IOSTANDARD LVCMOS25  } [get_ports {IOA_D6_P}]
set_property -dict {PACKAGE_PIN AD19  IOSTANDARD LVCMOS25  } [get_ports {IOA_D7_N}]
set_property -dict {PACKAGE_PIN Y18   IOSTANDARD LVCMOS25  } [get_ports {IOA_D8_P}]
set_property -dict {PACKAGE_PIN AA18  IOSTANDARD LVCMOS25  } [get_ports {IOA_D9_N}]
set_property -dict {PACKAGE_PIN AE25  IOSTANDARD LVCMOS25  } [get_ports {IOA_D10_P}]
set_property -dict {PACKAGE_PIN AE26  IOSTANDARD LVCMOS25  } [get_ports {IOA_D11_N}]
set_property -dict {PACKAGE_PIN AF24  IOSTANDARD LVCMOS25  } [get_ports {IOA_D12_P}]
set_property -dict {PACKAGE_PIN AF25  IOSTANDARD LVCMOS25  } [get_ports {IOA_D13_N}]
set_property -dict {PACKAGE_PIN AD25  IOSTANDARD LVCMOS25  } [get_ports {IOA_D14_P}]
set_property -dict {PACKAGE_PIN AD26  IOSTANDARD LVCMOS25  } [get_ports {IOA_D15_N}]
set_property -dict {PACKAGE_PIN AA24  IOSTANDARD LVCMOS25  } [get_ports {IOA_D16_P}]
set_property -dict {PACKAGE_PIN AB24  IOSTANDARD LVCMOS25  } [get_ports {IOA_D17_N}]
set_property -dict {PACKAGE_PIN AB26  IOSTANDARD LVCMOS25  } [get_ports {IOA_D18_P}]
set_property -dict {PACKAGE_PIN AC26  IOSTANDARD LVCMOS25  } [get_ports {IOA_D19_N}]
set_property -dict {PACKAGE_PIN AA25  IOSTANDARD LVCMOS25  } [get_ports {IOA_D20_P}]
set_property -dict {PACKAGE_PIN AB25  IOSTANDARD LVCMOS25  } [get_ports {IOA_D21_N}]
set_property -dict {PACKAGE_PIN AD23  IOSTANDARD LVCMOS25  } [get_ports {IOA_D22_P}]
set_property -dict {PACKAGE_PIN AD24  IOSTANDARD LVCMOS25  } [get_ports {IOA_D23_N}]
set_property -dict {PACKAGE_PIN AC22  IOSTANDARD LVCMOS25  } [get_ports {IOA_CLK1_N}]
set_property -dict {PACKAGE_PIN AC21  IOSTANDARD LVCMOS25  } [get_ports {IOA_CLK0_P}]

# Anios B
set_property -dict {PACKAGE_PIN AA19  IOSTANDARD LVCMOS25  } [get_ports {IOB_D0_P}]
set_property -dict {PACKAGE_PIN AB19  IOSTANDARD LVCMOS25  } [get_ports {IOB_D1_N}]
set_property -dict {PACKAGE_PIN AC18  IOSTANDARD LVCMOS25  } [get_ports {IOB_D2_P}]
set_property -dict {PACKAGE_PIN AC19  IOSTANDARD LVCMOS25  } [get_ports {IOB_D3_N}]
set_property -dict {PACKAGE_PIN AA20  IOSTANDARD LVCMOS25  } [get_ports {IOB_D4_P}]
set_property -dict {PACKAGE_PIN AB20  IOSTANDARD LVCMOS25  } [get_ports {IOB_D5_N}]
set_property -dict {PACKAGE_PIN W20   IOSTANDARD LVCMOS25  } [get_ports {IOB_D6_P}]
set_property -dict {PACKAGE_PIN Y20   IOSTANDARD LVCMOS25  } [get_ports {IOB_D7_N}]
set_property -dict {PACKAGE_PIN AB21  IOSTANDARD LVCMOS25  } [get_ports {IOB_D8_P}]
set_property -dict {PACKAGE_PIN AB22  IOSTANDARD LVCMOS25  } [get_ports {IOB_D9_N}]
set_property -dict {PACKAGE_PIN AE22  IOSTANDARD LVCMOS25  } [get_ports {IOB_D10_P}]
set_property -dict {PACKAGE_PIN AF22  IOSTANDARD LVCMOS25  } [get_ports {IOB_D11_N}]
set_property -dict {PACKAGE_PIN AE23  IOSTANDARD LVCMOS25  } [get_ports {IOB_D12_P}]
set_property -dict {PACKAGE_PIN AF23  IOSTANDARD LVCMOS25  } [get_ports {IOB_D13_N}]
set_property -dict {PACKAGE_PIN AA22  IOSTANDARD LVCMOS25  } [get_ports {IOB_D14_P}]
set_property -dict {PACKAGE_PIN AA23  IOSTANDARD LVCMOS25  } [get_ports {IOB_D15_N}]
set_property -dict {PACKAGE_PIN V19   IOSTANDARD LVCMOS25  } [get_ports {IOB_D16_SC0_DIP1_N}]
set_property -dict {PACKAGE_PIN V18   IOSTANDARD LVCMOS25  } [get_ports {IOB_D17_SC1_DIP2_N}]
set_property -dict {PACKAGE_PIN Y10   IOSTANDARD LVCMOS25  } [get_ports {IOB_D20_SC4_BTN0_N}]
set_property -dict {PACKAGE_PIN AA10  IOSTANDARD LVCMOS25  } [get_ports {IOB_D21_SC5_BTN1_N}]
set_property -dict {PACKAGE_PIN Y12   IOSTANDARD LVCMOS25  } [get_ports {IOB_D22_SC6_BTN2_N}]
set_property -dict {PACKAGE_PIN Y11   IOSTANDARD LVCMOS25  } [get_ports {IOB_D23_SC7_BTN3_N}]
set_property -dict {PACKAGE_PIN AD21  IOSTANDARD LVCMOS25  } [get_ports {IOB_CLK1_N}]
set_property -dict {PACKAGE_PIN AD20  IOSTANDARD LVCMOS25  } [get_ports {IOB_CLK0_P}]

# FMC LPC Connector 0
set_property -dict {PACKAGE_PIN A2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA02_N}]
set_property -dict {PACKAGE_PIN B2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA02_P}]
set_property -dict {PACKAGE_PIN A5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA03_N}]
set_property -dict {PACKAGE_PIN B6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA03_P}]
set_property -dict {PACKAGE_PIN B4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA04_N}]
set_property -dict {PACKAGE_PIN B5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA04_P}]
set_property -dict {PACKAGE_PIN A3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA05_N}]
set_property -dict {PACKAGE_PIN A4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA05_P}]
set_property -dict {PACKAGE_PIN B1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA06_N}]
set_property -dict {PACKAGE_PIN C2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA06_P}]
set_property -dict {PACKAGE_PIN C3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA07_N}]
set_property -dict {PACKAGE_PIN C4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA07_P}]
set_property -dict {PACKAGE_PIN B9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA08_N}]
set_property -dict {PACKAGE_PIN C9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA08_P}]
set_property -dict {PACKAGE_PIN A7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA09_N}]
set_property -dict {PACKAGE_PIN B7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA09_P}]
set_property -dict {PACKAGE_PIN A8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA10_N}]
set_property -dict {PACKAGE_PIN A9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA10_P}]
set_property -dict {PACKAGE_PIN A10   IOSTANDARD LVCMOS18  } [get_ports {FMC_LA11_N}]
set_property -dict {PACKAGE_PIN B10   IOSTANDARD LVCMOS18  } [get_ports {FMC_LA11_P}]
set_property -dict {PACKAGE_PIN D8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA12_N}]
set_property -dict {PACKAGE_PIN D9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA12_P}]
set_property -dict {PACKAGE_PIN D5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA13_N}]
set_property -dict {PACKAGE_PIN E6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA13_P}]
set_property -dict {PACKAGE_PIN E5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA14_N}]
set_property -dict {PACKAGE_PIN F5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA14_P}]
set_property -dict {PACKAGE_PIN E8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA15_N}]
set_property -dict {PACKAGE_PIN F9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA15_P}]
set_property -dict {PACKAGE_PIN E7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA16_N}]
set_property -dict {PACKAGE_PIN F8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA16_P}]
set_property -dict {PACKAGE_PIN D3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA19_N}]
set_property -dict {PACKAGE_PIN D4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA19_P}]
set_property -dict {PACKAGE_PIN C1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA20_N}]
set_property -dict {PACKAGE_PIN D1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA20_P}]
set_property -dict {PACKAGE_PIN F2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA21_N}]
set_property -dict {PACKAGE_PIN G2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA21_P}]
set_property -dict {PACKAGE_PIN E1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA22_N}]
set_property -dict {PACKAGE_PIN E2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA22_P}]
set_property -dict {PACKAGE_PIN E3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA23_N}]
set_property -dict {PACKAGE_PIN F3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA23_P}]
set_property -dict {PACKAGE_PIN F4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA24_N}]
set_property -dict {PACKAGE_PIN G4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA24_P}]
set_property -dict {PACKAGE_PIN K1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA25_N}]
set_property -dict {PACKAGE_PIN K2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA25_P}]
set_property -dict {PACKAGE_PIN G1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA26_N}]
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA26_P}]
set_property -dict {PACKAGE_PIN H1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA27_N}]
set_property -dict {PACKAGE_PIN J1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA27_P}]
set_property -dict {PACKAGE_PIN H3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA28_N}]
set_property -dict {PACKAGE_PIN H4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA28_P}]
set_property -dict {PACKAGE_PIN L2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA29_N}]
set_property -dict {PACKAGE_PIN M2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA29_P}]
set_property -dict {PACKAGE_PIN M1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA30_N}]
set_property -dict {PACKAGE_PIN N1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA30_P}]
set_property -dict {PACKAGE_PIN N2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA31_N}]
set_property -dict {PACKAGE_PIN N3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA31_P}]
set_property -dict {PACKAGE_PIN M4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA32_N}]
set_property -dict {PACKAGE_PIN N4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA32_P}]
set_property -dict {PACKAGE_PIN J5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA33_N}]
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA33_P}]
set_property -dict {PACKAGE_PIN C7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA00_CC_N}]
set_property -dict {PACKAGE_PIN C8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA00_CC_P}]
set_property -dict {PACKAGE_PIN C6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA01_CC_N}]
set_property -dict {PACKAGE_PIN D6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA01_CC_P}]
set_property -dict {PACKAGE_PIN J3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA17_CC_N}]
set_property -dict {PACKAGE_PIN J4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA17_CC_P}]
set_property -dict {PACKAGE_PIN K3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA18_CC_N}]
set_property -dict {PACKAGE_PIN L3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA18_CC_P}]
set_property -dict {PACKAGE_PIN F7    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK0_M2C_N}]
set_property -dict {PACKAGE_PIN G7    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK0_M2C_P}]
set_property -dict {PACKAGE_PIN M5    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK1_M2C_N}]
set_property -dict {PACKAGE_PIN M6    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK1_M2C_P}]

# I2C
set_property -dict {PACKAGE_PIN K10   IOSTANDARD LVCMOS18  } [get_ports {I2C_INT_N}]
set_property -dict {PACKAGE_PIN W13   IOSTANDARD LVCMOS25  } [get_ports {I2C_SCL}]
set_property -dict {PACKAGE_PIN Y13   IOSTANDARD LVCMOS25  } [get_ports {I2C_SDA}]

# IOC
if {$MGT_routing == "B111"} {
  # set_property PACKAGE_PIN AF8   [get_ports {IOC_D0_P}] # GTX
  # set_property PACKAGE_PIN AF7   [get_ports {IOC_D1_N}] # GTX
  # set_property PACKAGE_PIN AD8   [get_ports {IOC_D2_P}] # GTX
  # set_property PACKAGE_PIN AD7   [get_ports {IOC_D3_N}] # GTX
  # set_property PACKAGE_PIN AF4   [get_ports {IOC_D4_P}] # GTX
  # set_property PACKAGE_PIN AF3   [get_ports {IOC_D5_N}] # GTX
  # set_property PACKAGE_PIN AE6   [get_ports {IOC_D6_P}] # GTX
  # set_property PACKAGE_PIN AE5   [get_ports {IOC_D7_N}] # GTX
}
if {$MGT_routing == "No_MGT_routing"} {
  set_property -dict {PACKAGE_PIN K8    IOSTANDARD LVCMOS18  } [get_ports {IOC_D0_P}]
  set_property -dict {PACKAGE_PIN K7    IOSTANDARD LVCMOS18  } [get_ports {IOC_D1_N}]
  set_property -dict {PACKAGE_PIN N7    IOSTANDARD LVCMOS18  } [get_ports {IOC_D4_P}]
  set_property -dict {PACKAGE_PIN N6    IOSTANDARD LVCMOS18  } [get_ports {IOC_D5_N}]
}

# IOD
if {$MGT_routing == "B111"} {
  # set_property PACKAGE_PIN AE2   [get_ports {IOD_D0_P}] # GTX
  # set_property PACKAGE_PIN AE1   [get_ports {IOD_D1_N}] # GTX
  # set_property PACKAGE_PIN AC6   [get_ports {IOD_D2_P}] # GTX
  # set_property PACKAGE_PIN AC5   [get_ports {IOD_D3_N}] # GTX
  # set_property PACKAGE_PIN AC2   [get_ports {IOD_D4_P}] # GTX
  # set_property PACKAGE_PIN AC1   [get_ports {IOD_D5_N}] # GTX
  # set_property PACKAGE_PIN AD4   [get_ports {IOD_D6_P}] # GTX
  # set_property PACKAGE_PIN AD3   [get_ports {IOD_D7_N}] # GTX
}
if {$MGT_routing == "No_MGT_routing"} {
  set_property -dict {PACKAGE_PIN M8    IOSTANDARD LVCMOS18  } [get_ports {IOD_D0_P}]
  set_property -dict {PACKAGE_PIN L8    IOSTANDARD LVCMOS18  } [get_ports {IOD_D1_N}]
  set_property -dict {PACKAGE_PIN K6    IOSTANDARD LVCMOS18  } [get_ports {IOD_D4_P}]
  set_property -dict {PACKAGE_PIN J6    IOSTANDARD LVCMOS18  } [get_ports {IOD_D5_N}]
}

# IOE User LEDs
if {$MGT_routing == "B111"} {
  # set_property PACKAGE_PIN W6    [get_ports {IOE_D0_LED0_N}] # GTX
  # set_property PACKAGE_PIN W5    [get_ports {IOE_D1_LED1_N}] # GTX
  # set_property PACKAGE_PIN AA6   [get_ports {IOE_D2_LED2_N}] # GTX
  # set_property PACKAGE_PIN AA5   [get_ports {IOE_D3_LED3_N}] # GTX
}
if {$MGT_routing == "No_MGT_routing"} {
  set_property -dict {PACKAGE_PIN J8    IOSTANDARD LVCMOS18  } [get_ports {IOE_D0_LED0_N}]
  set_property -dict {PACKAGE_PIN H8    IOSTANDARD LVCMOS18  } [get_ports {IOE_D1_LED1_N}]
  set_property -dict {PACKAGE_PIN M7    IOSTANDARD LVCMOS18  } [get_ports {IOE_D2_LED2_N}]
  set_property -dict {PACKAGE_PIN L7    IOSTANDARD LVCMOS18  } [get_ports {IOE_D3_LED3_N}]
}

# LED
set_property -dict {PACKAGE_PIN H7    IOSTANDARD LVCMOS18  } [get_ports {FPGA_LED0_N}]
set_property -dict {PACKAGE_PIN H6    IOSTANDARD LVCMOS18  } [get_ports {FPGA_LED1_N}]
set_property -dict {PACKAGE_PIN H9    IOSTANDARD LVCMOS18  } [get_ports {FPGA_LED2_N}]

# PE1 SI5338 CLK3
set_property -dict {PACKAGE_PIN AC24  IOSTANDARD LVDS_25   } [get_ports {OSC_N}]
set_property -dict {PACKAGE_PIN AC23  IOSTANDARD LVDS_25   } [get_ports {OSC_P}]

# PL 200 MHz Oscillator
set_property -dict {PACKAGE_PIN L4    IOSTANDARD LVDS      } [get_ports {CLK200_N}]
set_property -dict {PACKAGE_PIN L5    IOSTANDARD LVDS      } [get_ports {CLK200_P}]

# SDRAM
set_property -dict {PACKAGE_PIN J14   IOSTANDARD SSTL15    } [get_ports {DDR3PL_BA[0]}]
set_property -dict {PACKAGE_PIN D16   IOSTANDARD SSTL15    } [get_ports {DDR3PL_BA[1]}]
set_property -dict {PACKAGE_PIN H14   IOSTANDARD SSTL15    } [get_ports {DDR3PL_BA[2]}]
set_property -dict {PACKAGE_PIN B11   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[0]}]
set_property -dict {PACKAGE_PIN C11   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[1]}]
set_property -dict {PACKAGE_PIN B12   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[2]}]
set_property -dict {PACKAGE_PIN C12   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[3]}]
set_property -dict {PACKAGE_PIN C14   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[4]}]
set_property -dict {PACKAGE_PIN D13   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[5]}]
set_property -dict {PACKAGE_PIN B14   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[6]}]
set_property -dict {PACKAGE_PIN A13   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[7]}]
set_property -dict {PACKAGE_PIN D10   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[8]}]
set_property -dict {PACKAGE_PIN E11   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[9]}]
set_property -dict {PACKAGE_PIN K15   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[0]}]
set_property -dict {PACKAGE_PIN B16   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[1]}]
set_property -dict {PACKAGE_PIN J15   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[2]}]
set_property -dict {PACKAGE_PIN G14   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[3]}]
set_property -dict {PACKAGE_PIN A17   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[4]}]
set_property -dict {PACKAGE_PIN G15   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[5]}]
set_property -dict {PACKAGE_PIN C17   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[6]}]
set_property -dict {PACKAGE_PIN G16   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[7]}]
set_property -dict {PACKAGE_PIN B17   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[8]}]
set_property -dict {PACKAGE_PIN F14   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[9]}]
set_property -dict {PACKAGE_PIN D15   IOSTANDARD SSTL15    } [get_ports {DDR3PL_CKE[0]}]
set_property -dict {PACKAGE_PIN E15   IOSTANDARD DIFF_SSTL15} [get_ports {DDR3PL_CK_N[0]}]
set_property -dict {PACKAGE_PIN F15   IOSTANDARD DIFF_SSTL15} [get_ports {DDR3PL_CK_P[0]}]
set_property -dict {PACKAGE_PIN E12   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[10]}]
set_property -dict {PACKAGE_PIN G11   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[11]}]
set_property -dict {PACKAGE_PIN F12   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[12]}]
set_property -dict {PACKAGE_PIN E10   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[13]}]
set_property -dict {PACKAGE_PIN D11   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[14]}]
set_property -dict {PACKAGE_PIN G12   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3PL_DQ[15]}]
set_property -dict {PACKAGE_PIN J13   IOSTANDARD SSTL15    } [get_ports {DDR3PL_ODT[0]}]
set_property -dict {PACKAGE_PIN AD10  IOSTANDARD LVCMOS25  } [get_ports {DDR3_VSEL}]
set_property -dict {PACKAGE_PIN K13   IOSTANDARD SSTL15    } [get_ports {DDR3PL_WE_N}]
set_property -dict {PACKAGE_PIN B15   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[10]}]
set_property -dict {PACKAGE_PIN C16   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[11]}]
set_property -dict {PACKAGE_PIN E16   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[12]}]
set_property -dict {PACKAGE_PIN D14   IOSTANDARD SSTL15    } [get_ports {DDR3PL_A[13]}]
set_property -dict {PACKAGE_PIN H12   IOSTANDARD SSTL15    } [get_ports {DDR3PL_CAS_N}]
set_property -dict {PACKAGE_PIN A12   IOSTANDARD SSTL15    } [get_ports {DDR3PL_DM[0]}]
set_property -dict {PACKAGE_PIN F13   IOSTANDARD SSTL15    } [get_ports {DDR3PL_DM[1]}]
set_property -dict {PACKAGE_PIN H13   IOSTANDARD SSTL15    } [get_ports {DDR3PL_RAS_N}]
set_property -dict {PACKAGE_PIN A14   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3PL_DQS_N[0]}]
set_property -dict {PACKAGE_PIN F10   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3PL_DQS_N[1]}]
set_property -dict {PACKAGE_PIN A15   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3PL_DQS_P[0]}]
set_property -dict {PACKAGE_PIN G10   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3PL_DQS_P[1]}]
set_property -dict {PACKAGE_PIN G9    IOSTANDARD LVCMOS18  } [get_ports {DDR3PL_RST_N}]

# PL Fast Ethernet 1
set_property -dict {PACKAGE_PIN W14   IOSTANDARD LVCMOS25  } [get_ports {ETH1_CLK}]
set_property -dict {PACKAGE_PIN AD14  IOSTANDARD LVCMOS25  } [get_ports {ETH1_MDC}]
set_property -dict {PACKAGE_PIN AD11  IOSTANDARD LVCMOS25  } [get_ports {ETH1_MDIO}]
set_property -dict {PACKAGE_PIN AF14  IOSTANDARD LVCMOS25  } [get_ports {ETH1_RESET_N}]
set_property -dict {PACKAGE_PIN W17   IOSTANDARD LVCMOS25  } [get_ports {ETH1_INT_N_PWDN_N}]

# PL Fast Ethernet 1A
set_property -dict {PACKAGE_PIN J11   IOSTANDARD LVCMOS18  } [get_ports {ETH1A_COL_PL}]
set_property -dict {PACKAGE_PIN AE12  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_RXD[0]}]
set_property -dict {PACKAGE_PIN AF12  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_RXD[1]}]
set_property -dict {PACKAGE_PIN AE11  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_RXD[2]}]
set_property -dict {PACKAGE_PIN AF10  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_RXD[3]}]
set_property -dict {PACKAGE_PIN AB12  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_TXD[0]}]
set_property -dict {PACKAGE_PIN AC11  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_TXD[1]}]
set_property -dict {PACKAGE_PIN AB11  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_TXD[2]}]
set_property -dict {PACKAGE_PIN AB10  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_TXD[3]}]
set_property -dict {PACKAGE_PIN AE13  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_RXDV}]
set_property -dict {PACKAGE_PIN AF13  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_RXER}]
set_property -dict {PACKAGE_PIN AE10  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_TXEN}]
set_property -dict {PACKAGE_PIN AC13  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_RXCLK}]
set_property -dict {PACKAGE_PIN AC12  IOSTANDARD LVCMOS25  } [get_ports {ETH1A_TXCLK}]
set_property -dict {PACKAGE_PIN G6    IOSTANDARD LVCMOS18  } [get_ports {ETH1A_CRS_PL}]
set_property -dict {PACKAGE_PIN J10   IOSTANDARD LVCMOS18  } [get_ports {ETH1A_LED_PL_N}]

# PL Fast Ethernet 1B
set_property -dict {PACKAGE_PIN H11   IOSTANDARD LVCMOS18  } [get_ports {ETH1B_COL_PL}]
set_property -dict {PACKAGE_PIN AF15  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_RXD[0]}]
set_property -dict {PACKAGE_PIN AE15  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_RXD[1]}]
set_property -dict {PACKAGE_PIN AD15  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_RXD[2]}]
set_property -dict {PACKAGE_PIN AE16  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_RXD[3]}]
set_property -dict {PACKAGE_PIN AD16  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_TXD[0]}]
set_property -dict {PACKAGE_PIN AE17  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_TXD[1]}]
set_property -dict {PACKAGE_PIN AA17  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_TXD[2]}]
set_property -dict {PACKAGE_PIN Y17   IOSTANDARD LVCMOS25  } [get_ports {ETH1B_TXD[3]}]
set_property -dict {PACKAGE_PIN AD13  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_RXDV}]
set_property -dict {PACKAGE_PIN AB14  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_RXER}]
set_property -dict {PACKAGE_PIN AF17  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_TXEN}]
set_property -dict {PACKAGE_PIN AC14  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_RXCLK}]
set_property -dict {PACKAGE_PIN AB15  IOSTANDARD LVCMOS25  } [get_ports {ETH1B_TXCLK}]
set_property -dict {PACKAGE_PIN G5    IOSTANDARD LVCMOS18  } [get_ports {ETH1B_CRS_PL}]
set_property -dict {PACKAGE_PIN J9    IOSTANDARD LVCMOS18  } [get_ports {ETH1B_LED_PL_N}]

# PL Gig Ethernet
set_property -dict {PACKAGE_PIN K11   IOSTANDARD LVCMOS18  } [get_ports {ETH0_INT_N_PL}]
