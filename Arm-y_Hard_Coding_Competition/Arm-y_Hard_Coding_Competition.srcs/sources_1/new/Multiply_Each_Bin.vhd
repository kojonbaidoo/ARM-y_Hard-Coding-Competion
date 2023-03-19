----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2023 21:03:03
-- Design Name: 
-- Module Name: Multiply_Each_Bin - Behavioral
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

entity Multiply_Each_Bin is
    Port ( AE0, AE1, AE2, AE3 : in STD_LOGIC;
           BE0, BE1, BE2, BE3 : in STD_LOGIC;
           I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X : out STD_LOGIC);
end Multiply_Each_Bin;

architecture Behavioral of Multiply_Each_Bin is

begin
    I <= AE0 and BE3;
    J <= AE1 and BE3;
    K <= AE2 and BE3;
    L <= AE3 and BE3;
    
    M <= AE0 and BE2;
    N <= AE1 and BE2;
    O <= AE2 and BE2;
    P <= AE3 and BE2;
    
    Q <= AE0 and BE1;
    R <= AE1 and BE1;
    S <= AE2 and BE1;
    T <= AE3 and BE1;
    
    U <= AE0 and BE0;
    V <= AE1 and BE0;
    W <= AE2 and BE0;
    X <= AE3 and BE0;

end Behavioral;
