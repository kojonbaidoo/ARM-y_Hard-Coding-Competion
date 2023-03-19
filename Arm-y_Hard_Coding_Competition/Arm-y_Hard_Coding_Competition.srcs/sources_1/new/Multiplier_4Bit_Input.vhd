----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2023 20:53:00
-- Design Name: 
-- Module Name: Multiplier_4Bit_Input - Behavioral
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

entity Multiplier_4Bit_Input is
    Port ( AAA0, AAA1, AAA2, AAA3 : in STD_LOGIC;
           BBB0, BBB1, BBB2, BBB3 : in STD_LOGIC;
           YYY0, YYY1, YYY2, YYY3, YYY4, YYY5, YYY6, YYY7 : out STD_LOGIC;
           Cout3 : out STD_LOGIC);
end Multiplier_4Bit_Input;

architecture Structural of Multiplier_4Bit_Input is

Component Ripple_Adder_8Bits is
    Port ( AA0, AA1, AA2, AA3, AA4, AA5, AA6, AA7 : in STD_LOGIC;
           BB0, BB1, BB2, BB3, BB4, BB5, BB6, BB7 : in STD_LOGIC;
           YY0, YY1, YY2, YY3, YY4, YY5, YY6, YY7  : out STD_LOGIC;
           Cin2  : in STD_LOGIC;
           Cout2 : out STD_LOGIC);
end Component Ripple_Adder_8Bits;

Component Multiply_Each_Bin is
    Port ( AE0, AE1, AE2, AE3 : in STD_LOGIC;
           BE0, BE1, BE2, BE3 : in STD_LOGIC;
           I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X : out STD_LOGIC);
end Component Multiply_Each_Bin;
signal I1, J1, K1, L1, M1, N1, O1, P1, Q1, R1, S1, T1, U1, V1, W1, X1 : STD_LOGIC;
begin
    MEB: Multiply_Each_Bin port map(
           AE0 => AAA0, AE1 => AAA1, AE2 => AAA2, AE3 => AAA3,
           BE0 => BBB0, BE1 => BBB1, BE2 => BBB2, BE3 => BBB3,
           I => I1, J => J1, K => K1, L =>L1, 
           M => M1, N => N1, O => O1, P => P1, 
           Q => Q1, R => R1, S => S1, T => T1, 
           U => U1, V => V1, W => W1, X => X1);
           
    RA81: Ripple_Adder_8Bits port map(

end Structural;
