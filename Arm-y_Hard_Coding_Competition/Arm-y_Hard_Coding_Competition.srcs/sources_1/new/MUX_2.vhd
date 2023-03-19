----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2023 21:10:52
-- Design Name: 
-- Module Name: MUX_2 - Behavioral
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

entity MUX_2 is
  Port ( I0,I1,I2,I3: in std_logic_vector(7 downto 0);
        Y: out std_logic_vector(7 downto 0);
        S0,S1: in std_logic);
end MUX_2;

architecture Behavioral of MUX_2 is
    signal signal_input : std_logic_vector(1 downto 0); 

begin
    signal_input <= S1&S0;
    with signal_input select
        Y <= I0 when "00",
             I1 when "01",
             I2 when "10",
             I3 when others;
end Behavioral;
