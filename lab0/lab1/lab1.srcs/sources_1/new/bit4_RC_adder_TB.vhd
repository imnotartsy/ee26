----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2022 05:37:09 PM
-- Design Name: 
-- Module Name: bit4_RC_adder_TB - Behavioral
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

entity bit4_RC_adder_TB is
--  Port ( );
end bit4_RC_adder_TB;

architecture Behavioral of bit4_RC_adder_TB is
    component bit4_RC_adder is
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
     end component;

    signal a: std_logic_vector(3 downto 0) := "0000"; 
    signal b: std_logic_vector(3 downto 0) := "0000";
    signal ci: std_logic := '0';
    signal t: std_logic := '0';
    signal s: std_logic_vector(3 downto 0) := "0000";
    signal co: std_logic := '0';
    signal z: std_logic := '0';
    signal v: std_logic := '0';
    
begin
    myAdder: bit4_RC_adder
        port map(
            A => a,
            B => b,
            CI => ci,
            T => t,
            S => s,
            CO => co,
            Z => z,
            V => v
        );

    process is 
    begin
    
    -- A = 0; B = 0
    a <= "0000";
    b <= "0000";
    
    CI <= '0';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    CI <= '1';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    a <= "0001";
    b <= "0000";
    
    CI <= '0';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    CI <= '1';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    a <= "0000";
    b <= "0001";
    
    CI <= '0';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    CI <= '1';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    
    
    
    a <= "0001";
    b <= "0001";
    
    CI <= '0';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    CI <= '1';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    
    
    
    
    
    a <= "1111";
    b <= "0001";
    
    CI <= '0';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    CI <= '1';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    
    a <= "1111";
    b <= "0010";
    
    CI <= '0';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    CI <= '1';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    a <= "1111";
    b <= "1111";
    
    CI <= '0';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    CI <= '1';
    
    T <= '0';
    wait for 20 ns;
    T <= '1';
    wait for 20 ns;
    
    
    
    
    
    wait;
    
    end process;

end Behavioral;
