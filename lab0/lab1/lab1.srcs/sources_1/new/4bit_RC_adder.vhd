----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2022 04:38:55 PM
-- Design Name: 
-- Module Name: 4bit_RC_adder - 4bit_RC_adder
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bit4_RC_adder is
Port (
    A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    CI: in std_logic;
    T: in std_logic;
    S: out std_logic_vector(3 downto 0);
    CO: out std_logic;
    Z: out std_logic;
    V: out std_logic
);
end bit4_RC_adder;

architecture bit4_RC_adder_behavioral of bit4_RC_adder is
    signal result : std_logic_vector(4 downto 0);
    -- signal interm_cout : std_logic_vector(4 downto 0);

begin
         
    result <= std_logic_vector(unsigned('0'&A) + unsigned('0'&B) + ("0000"&CI)) when T = '0' else
         std_logic_vector(unsigned('0'&A) - unsigned('0'&B) + ("0000"&CI));
         
    S <= std_logic_vector(unsigned(A) + unsigned(B) + ("000"&CI)) when T = '0' else
         std_logic_vector(unsigned(A) - unsigned(B) + ("000"&CI));

    CO <= result(4);

    Z <= '1' when S = "0000" else
         '0';

    V <= '1' when ( ((T = '0') and ((unsigned(S) < unsigned(A)) or (unsigned(S) < unsigned(B))))
                 or ((T = '1') and ((unsigned(S) > unsigned(A)) or (unsigned(S) > unsigned(B)))) ) else
         '0';


end bit4_RC_adder_behavioral;
