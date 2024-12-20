----------------------------------------------------------------------------------------------------
-- Copyright (c) 2024 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- libraries
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

----------------------------------------------------------------------------------------------------
-- entity declaration
----------------------------------------------------------------------------------------------------
entity Mercury_ZX1_PE1 is
  
  port (
    
    -- PS MIO Pins
    FIXED_IO_mio                   : inout   std_logic_vector(53 downto 0);
    FIXED_IO_ddr_vrn               : inout   std_logic;
    FIXED_IO_ddr_vrp               : inout   std_logic;
    FIXED_IO_ps_srstb              : inout   std_logic;
    FIXED_IO_ps_clk                : inout   std_logic;
    FIXED_IO_ps_porb               : inout   std_logic;
    DDR_cas_n                      : inout   std_logic;
    DDR_cke                        : inout   std_logic;
    DDR_ck_n                       : inout   std_logic;
    DDR_ck_p                       : inout   std_logic;
    DDR_cs_n                       : inout   std_logic;
    DDR_reset_n                    : inout   std_logic;
    DDR_odt                        : inout   std_logic;
    DDR_ras_n                      : inout   std_logic;
    DDR_we_n                       : inout   std_logic;
    DDR_ba                         : inout   std_logic_vector(2 downto 0);
    DDR_addr                       : inout   std_logic_vector(14 downto 0);
    DDR_dm                         : inout   std_logic_vector(3 downto 0);
    DDR_dq                         : inout   std_logic_vector(31 downto 0);
    DDR_dqs_n                      : inout   std_logic_vector(3 downto 0);
    DDR_dqs_p                      : inout   std_logic_vector(3 downto 0);
    
    -- Anios A
    IOA_D0_P                       : inout   std_logic;
    IOA_D1_N                       : inout   std_logic;
    IOA_D2_P                       : inout   std_logic;
    IOA_D3_N                       : inout   std_logic;
    IOA_D4_P                       : inout   std_logic;
    IOA_D5_N                       : inout   std_logic;
    IOA_D6_P                       : inout   std_logic;
    IOA_D7_N                       : inout   std_logic;
    IOA_D8_P                       : inout   std_logic;
    IOA_D9_N                       : inout   std_logic;
    IOA_D10_P                      : inout   std_logic;
    IOA_D11_N                      : inout   std_logic;
    IOA_D12_P                      : inout   std_logic;
    IOA_D13_N                      : inout   std_logic;
    IOA_D14_P                      : inout   std_logic;
    IOA_D15_N                      : inout   std_logic;
    IOA_D16_P                      : inout   std_logic;
    IOA_D17_N                      : inout   std_logic;
    IOA_D18_P                      : inout   std_logic;
    IOA_D19_N                      : inout   std_logic;
    IOA_D20_P                      : inout   std_logic;
    IOA_D21_N                      : inout   std_logic;
    IOA_D22_P                      : inout   std_logic;
    IOA_D23_N                      : inout   std_logic;
    IOA_CLK1_N                     : inout   std_logic;
    IOA_CLK0_P                     : inout   std_logic;
    
    -- Anios B
    IOB_D0_P                       : inout   std_logic;
    IOB_D1_N                       : inout   std_logic;
    IOB_D2_P                       : inout   std_logic;
    IOB_D3_N                       : inout   std_logic;
    IOB_D4_P                       : inout   std_logic;
    IOB_D5_N                       : inout   std_logic;
    IOB_D6_P                       : inout   std_logic;
    IOB_D7_N                       : inout   std_logic;
    IOB_D8_P                       : inout   std_logic;
    IOB_D9_N                       : inout   std_logic;
    IOB_D10_P                      : inout   std_logic;
    IOB_D11_N                      : inout   std_logic;
    IOB_D12_P                      : inout   std_logic;
    IOB_D13_N                      : inout   std_logic;
    IOB_D14_P                      : inout   std_logic;
    IOB_D15_N                      : inout   std_logic;
    IOB_D16_SC0_DIP1_N             : inout   std_logic;
    IOB_D17_SC1_DIP2_N             : inout   std_logic;
    IOB_D20_SC4_BTN0_N             : inout   std_logic;
    IOB_D21_SC5_BTN1_N             : inout   std_logic;
    IOB_D22_SC6_BTN2_N             : inout   std_logic;
    IOB_D23_SC7_BTN3_N             : inout   std_logic;
    IOB_CLK1_N                     : inout   std_logic;
    IOB_CLK0_P                     : inout   std_logic;
    
    -- FMC LPC Connector 0
    FMC_LA02_N                     : inout   std_logic;
    FMC_LA02_P                     : inout   std_logic;
    FMC_LA03_N                     : inout   std_logic;
    FMC_LA03_P                     : inout   std_logic;
    FMC_LA04_N                     : inout   std_logic;
    FMC_LA04_P                     : inout   std_logic;
    FMC_LA05_N                     : inout   std_logic;
    FMC_LA05_P                     : inout   std_logic;
    FMC_LA06_N                     : inout   std_logic;
    FMC_LA06_P                     : inout   std_logic;
    FMC_LA07_N                     : inout   std_logic;
    FMC_LA07_P                     : inout   std_logic;
    FMC_LA08_N                     : inout   std_logic;
    FMC_LA08_P                     : inout   std_logic;
    FMC_LA09_N                     : inout   std_logic;
    FMC_LA09_P                     : inout   std_logic;
    FMC_LA10_N                     : inout   std_logic;
    FMC_LA10_P                     : inout   std_logic;
    FMC_LA11_N                     : inout   std_logic;
    FMC_LA11_P                     : inout   std_logic;
    FMC_LA12_N                     : inout   std_logic;
    FMC_LA12_P                     : inout   std_logic;
    FMC_LA13_N                     : inout   std_logic;
    FMC_LA13_P                     : inout   std_logic;
    FMC_LA14_N                     : inout   std_logic;
    FMC_LA14_P                     : inout   std_logic;
    FMC_LA15_N                     : inout   std_logic;
    FMC_LA15_P                     : inout   std_logic;
    FMC_LA16_N                     : inout   std_logic;
    FMC_LA16_P                     : inout   std_logic;
    FMC_LA19_N                     : inout   std_logic;
    FMC_LA19_P                     : inout   std_logic;
    FMC_LA20_N                     : inout   std_logic;
    FMC_LA20_P                     : inout   std_logic;
    FMC_LA21_N                     : inout   std_logic;
    FMC_LA21_P                     : inout   std_logic;
    FMC_LA22_N                     : inout   std_logic;
    FMC_LA22_P                     : inout   std_logic;
    FMC_LA23_N                     : inout   std_logic;
    FMC_LA23_P                     : inout   std_logic;
    FMC_LA24_N                     : inout   std_logic;
    FMC_LA24_P                     : inout   std_logic;
    FMC_LA25_N                     : inout   std_logic;
    FMC_LA25_P                     : inout   std_logic;
    FMC_LA26_N                     : inout   std_logic;
    FMC_LA26_P                     : inout   std_logic;
    FMC_LA27_N                     : inout   std_logic;
    FMC_LA27_P                     : inout   std_logic;
    FMC_LA28_N                     : inout   std_logic;
    FMC_LA28_P                     : inout   std_logic;
    FMC_LA29_N                     : inout   std_logic;
    FMC_LA29_P                     : inout   std_logic;
    FMC_LA30_N                     : inout   std_logic;
    FMC_LA30_P                     : inout   std_logic;
    FMC_LA31_N                     : inout   std_logic;
    FMC_LA31_P                     : inout   std_logic;
    FMC_LA32_N                     : inout   std_logic;
    FMC_LA32_P                     : inout   std_logic;
    FMC_LA33_N                     : inout   std_logic;
    FMC_LA33_P                     : inout   std_logic;
    FMC_LA00_CC_N                  : inout   std_logic;
    FMC_LA00_CC_P                  : inout   std_logic;
    FMC_LA01_CC_N                  : inout   std_logic;
    FMC_LA01_CC_P                  : inout   std_logic;
    FMC_LA17_CC_N                  : inout   std_logic;
    FMC_LA17_CC_P                  : inout   std_logic;
    FMC_LA18_CC_N                  : inout   std_logic;
    FMC_LA18_CC_P                  : inout   std_logic;
    FMC_CLK0_M2C_N                 : inout   std_logic;
    FMC_CLK0_M2C_P                 : inout   std_logic;
    FMC_CLK1_M2C_N                 : inout   std_logic;
    FMC_CLK1_M2C_P                 : inout   std_logic;
    
    -- I2C
    I2C_INT_N                      : in      std_logic;
    I2C_SCL                        : inout   std_logic;
    I2C_SDA                        : inout   std_logic;
    
    -- IOC
    IOC_D0_P                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOC_D1_N                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOC_D2_P                       : inout   std_logic; -- Only available on B111 modules
    IOC_D3_N                       : inout   std_logic; -- Only available on B111 modules
    IOC_D4_P                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOC_D5_N                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOC_D6_P                       : inout   std_logic; -- Only available on B111 modules
    IOC_D7_N                       : inout   std_logic; -- Only available on B111 modules
    
    -- IOD
    IOD_D0_P                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOD_D1_N                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOD_D2_P                       : inout   std_logic; -- Only available on B111 modules
    IOD_D3_N                       : inout   std_logic; -- Only available on B111 modules
    IOD_D4_P                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOD_D5_N                       : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOD_D6_P                       : inout   std_logic; -- Only available on B111 modules
    IOD_D7_N                       : inout   std_logic; -- Only available on B111 modules
    
    -- IOE User LEDs
    IOE_D0_LED0_N                  : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOE_D1_LED1_N                  : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOE_D2_LED2_N                  : inout   std_logic; -- Available on B111, No_MGT_routing modules
    IOE_D3_LED3_N                  : inout   std_logic; -- Available on B111, No_MGT_routing modules
    
    -- LED
    FPGA_LED0_N                    : out     std_logic;
    FPGA_LED1_N                    : out     std_logic;
    FPGA_LED2_N                    : out     std_logic;
    
    -- PE1 SI5338 CLK3
    OSC_N                          : in      std_logic;
    OSC_P                          : in      std_logic;
    
    -- PL 200 MHz Oscillator
    CLK200_N                       : in      std_logic;
    CLK200_P                       : in      std_logic;
    
    -- SDRAM
    DDR3_VSEL                      : inout   std_logic;
    DDR3PL_WE_N                    : out     std_logic;
    DDR3PL_CAS_N                   : out     std_logic;
    DDR3PL_RAS_N                   : out     std_logic;
    DDR3PL_RST_N                   : out     std_logic;
    DDR3PL_BA                      : out     std_logic_vector(2 downto 0);
    DDR3PL_DQ                      : inout   std_logic_vector(15 downto 0);
    DDR3PL_A                       : out     std_logic_vector(13 downto 0);
    DDR3PL_CKE                     : out     std_logic_vector(0 downto 0);
    DDR3PL_CK_N                    : out     std_logic_vector(0 downto 0);
    DDR3PL_CK_P                    : out     std_logic_vector(0 downto 0);
    DDR3PL_ODT                     : out     std_logic_vector(0 downto 0);
    DDR3PL_DM                      : inout   std_logic_vector(1 downto 0);
    DDR3PL_DQS_N                   : inout   std_logic_vector(1 downto 0);
    DDR3PL_DQS_P                   : inout   std_logic_vector(1 downto 0);
    
    -- PL Fast Ethernet 1
    ETH1_CLK                       : out     std_logic;
    ETH1_MDC                       : out     std_logic;
    ETH1_MDIO                      : inout   std_logic;
    ETH1_RESET_N                   : out     std_logic;
    ETH1_INT_N_PWDN_N              : inout   std_logic;
    
    -- PL Fast Ethernet 1A
    ETH1A_COL_PL                   : in      std_logic;
    ETH1A_RXDV                     : in      std_logic;
    ETH1A_RXER                     : in      std_logic;
    ETH1A_TXEN                     : out     std_logic;
    ETH1A_RXCLK                    : in      std_logic;
    ETH1A_TXCLK                    : in      std_logic;
    ETH1A_CRS_PL                   : in      std_logic;
    ETH1A_LED_PL_N                 : in      std_logic;
    ETH1A_RXD                      : in      std_logic_vector(3 downto 0);
    ETH1A_TXD                      : out     std_logic_vector(3 downto 0);
    
    -- PL Fast Ethernet 1B
    ETH1B_COL_PL                   : in      std_logic;
    ETH1B_RXDV                     : in      std_logic;
    ETH1B_RXER                     : in      std_logic;
    ETH1B_TXEN                     : out     std_logic;
    ETH1B_RXCLK                    : in      std_logic;
    ETH1B_TXCLK                    : in      std_logic;
    ETH1B_CRS_PL                   : in      std_logic;
    ETH1B_LED_PL_N                 : in      std_logic;
    ETH1B_RXD                      : in      std_logic_vector(3 downto 0);
    ETH1B_TXD                      : out     std_logic_vector(3 downto 0);
    
    -- PL Gig Ethernet
    ETH0_INT_N_PL                  : in      std_logic
  );
end Mercury_ZX1_PE1;

architecture rtl of Mercury_ZX1_PE1 is

  ----------------------------------------------------------------------------------------------------
  -- component declarations
  ----------------------------------------------------------------------------------------------------
  component Mercury_ZX1 is
    port (
      Clk100              : out    std_logic;
      Clk50               : out    std_logic;
      Clk25               : out    std_logic;
      Rst_N               : out    std_logic;
      FIXED_IO_mio        : inout  std_logic_vector(53 downto 0);
      FIXED_IO_ddr_vrn    : inout  std_logic;
      FIXED_IO_ddr_vrp    : inout  std_logic;
      FIXED_IO_ps_srstb   : inout  std_logic;
      FIXED_IO_ps_clk     : inout  std_logic;
      FIXED_IO_ps_porb    : inout  std_logic;
      DDR_cas_n           : inout  std_logic;
      DDR_cke             : inout  std_logic;
      DDR_ck_n            : inout  std_logic;
      DDR_ck_p            : inout  std_logic;
      DDR_cs_n            : inout  std_logic;
      DDR_reset_n         : inout  std_logic;
      DDR_odt             : inout  std_logic;
      DDR_ras_n           : inout  std_logic;
      DDR_we_n            : inout  std_logic;
      DDR_ba              : inout  std_logic_vector(2 downto 0);
      DDR_addr            : inout  std_logic_vector(14 downto 0);
      DDR_dm              : inout  std_logic_vector(3 downto 0);
      DDR_dq              : inout  std_logic_vector(31 downto 0);
      DDR_dqs_n           : inout  std_logic_vector(3 downto 0);
      DDR_dqs_p           : inout  std_logic_vector(3 downto 0);
      IRQ_I2C             : in     std_logic;
      IIC_sda_i           : in     std_logic;
      IIC_sda_o           : out    std_logic;
      IIC_sda_t           : out    std_logic;
      IIC_scl_i           : in     std_logic;
      IIC_scl_o           : out    std_logic;
      IIC_scl_t           : out    std_logic;
      LED_N               : out    std_logic_vector(1 downto 0);
      SYS_CLK_clk_p       : in     std_logic;
      SYS_CLK_clk_n       : in     std_logic;
      DDR3_dq             : inout  std_logic_vector(15 downto 0);
      DDR3_dqs_p          : inout  std_logic_vector(1 downto 0);
      DDR3_dqs_n          : inout  std_logic_vector(1 downto 0);
      DDR3_addr           : out    std_logic_vector(13 downto 0);
      DDR3_ba             : out    std_logic_vector(2 downto 0);
      DDR3_ras_n          : out    std_logic;
      DDR3_cas_n          : out    std_logic;
      DDR3_we_n           : out    std_logic;
      DDR3_reset_n        : out    std_logic;
      DDR3_ck_p           : out    std_logic_vector(0 downto 0);
      DDR3_ck_n           : out    std_logic_vector(0 downto 0);
      DDR3_cke            : out    std_logic_vector(0 downto 0);
      DDR3_dm             : out    std_logic_vector(1 downto 0);
      DDR3_odt            : out    std_logic_vector(0 downto 0);
      IRQ_ETH0            : in     std_logic
    );
    
  end component Mercury_ZX1;
  component IBUFDS is
      port (
        O : out STD_LOGIC;
        I : in STD_LOGIC;
        IB : in STD_LOGIC
      );
    end component IBUFDS;
  

  ----------------------------------------------------------------------------------------------------
  -- signal declarations
  ----------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Clk50            : std_logic;
  signal Clk25            : std_logic;
  signal Rst_N            : std_logic;
  signal IRQ_I2C          : std_logic;
  signal IIC_sda_i        : std_logic;
  signal IIC_sda_o        : std_logic;
  signal IIC_sda_t        : std_logic;
  signal IIC_scl_i        : std_logic;
  signal IIC_scl_o        : std_logic;
  signal IIC_scl_t        : std_logic;
  signal LED_N            : std_logic_vector(1 downto 0);
  signal IRQ_ETH0         : std_logic;
  signal LedCount         : unsigned(23 downto 0);
  
  ----------------------------------------------------------------------------------------------------
  -- attribute declarations
  ----------------------------------------------------------------------------------------------------

begin
  
  ----------------------------------------------------------------------------------------------------
  -- processor system instance
  ----------------------------------------------------------------------------------------------------
  Mercury_ZX1_i: component Mercury_ZX1
    port map (
      Clk100               => Clk100,
      Clk50                => Clk50,
      Clk25                => Clk25,
      Rst_N                => Rst_N,
      FIXED_IO_mio         => FIXED_IO_mio,
      FIXED_IO_ddr_vrn     => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp     => FIXED_IO_ddr_vrp,
      FIXED_IO_ps_srstb    => FIXED_IO_ps_srstb,
      FIXED_IO_ps_clk      => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb     => FIXED_IO_ps_porb,
      DDR_cas_n            => DDR_cas_n,
      DDR_cke              => DDR_cke,
      DDR_ck_n             => DDR_ck_n,
      DDR_ck_p             => DDR_ck_p,
      DDR_cs_n             => DDR_cs_n,
      DDR_reset_n          => DDR_reset_n,
      DDR_odt              => DDR_odt,
      DDR_ras_n            => DDR_ras_n,
      DDR_we_n             => DDR_we_n,
      DDR_ba               => DDR_ba,
      DDR_addr             => DDR_addr,
      DDR_dm               => DDR_dm,
      DDR_dq               => DDR_dq,
      DDR_dqs_n            => DDR_dqs_n,
      DDR_dqs_p            => DDR_dqs_p,
      IRQ_I2C              => IRQ_I2C,
      IIC_sda_i            => IIC_sda_i,
      IIC_sda_o            => IIC_sda_o,
      IIC_sda_t            => IIC_sda_t,
      IIC_scl_i            => IIC_scl_i,
      IIC_scl_o            => IIC_scl_o,
      IIC_scl_t            => IIC_scl_t,
      LED_N                => LED_N,
      SYS_CLK_clk_p        => CLK200_P,
      SYS_CLK_clk_n        => CLK200_N,
      DDR3_dq              => DDR3PL_DQ,
      DDR3_dqs_p           => DDR3PL_DQS_P,
      DDR3_dqs_n           => DDR3PL_DQS_N,
      DDR3_addr            => DDR3PL_A,
      DDR3_ba              => DDR3PL_BA,
      DDR3_ras_n           => DDR3PL_RAS_N,
      DDR3_cas_n           => DDR3PL_CAS_N,
      DDR3_we_n            => DDR3PL_WE_N,
      DDR3_reset_n         => DDR3PL_RST_N,
      DDR3_ck_p            => DDR3PL_CK_P,
      DDR3_ck_n            => DDR3PL_CK_N,
      DDR3_cke             => DDR3PL_CKE,
      DDR3_dm              => DDR3PL_DM,
      DDR3_odt             => DDR3PL_ODT,
      IRQ_ETH0             => IRQ_ETH0
    );
  
  IRQ_I2C <= not I2C_INT_N;
  I2C_SDA <= IIC_sda_o when IIC_sda_t = '0' else 'Z';
  IIC_sda_i <= I2C_SDA;
  I2C_SCL <= IIC_scl_o when IIC_scl_t = '0' else 'Z';
  IIC_scl_i <= I2C_SCL;
  
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  FPGA_LED0_N <= '0' when LedCount(LedCount'high) = '0' else 'Z';
  FPGA_LED1_N <= '0' when LED_N(0) = '0' else 'Z';
  FPGA_LED2_N <= '0' when LED_N(1) = '0' else 'Z';
  
  OSC_buf: component IBUFDS
  port map (
  	O => open,
  	I => OSC_P,
  	IB => OSC_N
  );
  
  DDR3_VSEL <= 'Z';
  
  ETH1_CLK <= Clk25;
  
  IRQ_ETH0 <= not ETH0_INT_N_PL;
  
end rtl;
