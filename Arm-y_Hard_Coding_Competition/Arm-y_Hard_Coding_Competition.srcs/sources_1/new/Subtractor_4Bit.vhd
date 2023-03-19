----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2023 20:48:53
-- Design Name: 
-- Module Name: Subtractor_4Bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Subtractor_4Bit is
  Port (A0,A1,A2,A3,B0,B1,B2,B3: in STD_LOGIC;
        Y0,Y1,Y2,Y3: out STD_LOGIC);
end Subtractor_4Bit;

architecture Behavioral of Subtractor_4Bit is

Component Ripple_Adder_4Bit is
     Port ( A0, A1, A2, A3 : in STD_LOGIC;
           B0, B1, B2, B3 : in STD_LOGIC;
           Cout1          : out STD_LOGIC;
           Y0, Y1, Y2, Y3 : out STD_LOGIC);
end Component;

    signal tc_B0,tc_B1,tc_B2,tc_B3 : STD_LOGIC;
    signal not_input : std_logic_vector(3 downto 0);
begin
    not_input <= not(B3)&not(B2)&not(B1)&not(B0);
    RA1: Ripple_Adder_4Bit port map(A0=>not_input(0), A1=>not_input(1), A2=>not_input(2), A3=>not_input(3),
                                    B0=>'1',B1=>'0',B2=>'0',B3=>'0',
                                    Y0=>tc_B0, Y1=>tc_B1, Y2=>tc_B2, Y3=>tc_B3);
                                    
    RA2: Ripple_Adder_4Bit port map(A0=>A0, A1=>A1, A2=>A2, A3=>A3,
                                    B0=>tc_B0,B1=>tc_B1,B2=>tc_B2,B3=>tc_B3,
                                    Y0=>Y0, Y1=>Y1, Y2=>Y2, Y3=>Y3);
end Behavioral;
