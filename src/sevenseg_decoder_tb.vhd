----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2026 07:08:41 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture behavior of sevenseg_decoder_tb is

   
    component sevenseg_decoder
    port(
         i_Hex   : in  std_logic_vector(3 downto 0);
         o_seg_n : out std_logic_vector(6 downto 0)
        );
    end component;

    -- Inputs
    signal w_Hex : std_logic_vector(3 downto 0) := "0000";

    -- Outputs
    signal w_seg_n : std_logic_vector(6 downto 0) := "1111111";

begin

    -- PORT MAPS ---------------------------------------------------
  
    uut: sevenseg_decoder port map (
          i_Hex   => w_Hex,
          o_seg_n => w_seg_n
        );
    ----------------------------------------------------------------

   
    sim_proc: process
    begin
        -- test 0
        w_Hex <= x"0";
        wait for 10 ns;
        assert w_seg_n = "1000000" report "bad output for 0" severity failure;

        -- test 1
        w_Hex <= x"1";
        wait for 10 ns;
        assert w_seg_n = "1111001" report "bad output for 1" severity failure;

        -- test 2
        w_Hex <= x"2";
        wait for 10 ns;
        assert w_seg_n = "0100100" report "bad output for 2" severity failure;

        -- test 3
        w_Hex <= x"3";
        wait for 10 ns;
        assert w_seg_n = "0110000" report "bad output for 3" severity failure;

        -- test 4
        w_Hex <= x"4";
        wait for 10 ns;
        assert w_seg_n = "0011001" report "bad output for 4" severity failure;

        -- test 5
        w_Hex <= x"5";
        wait for 10 ns;
        assert w_seg_n = "0010010" report "bad output for 5" severity failure;

        -- test 6
        w_Hex <= x"6";
        wait for 10 ns;
        assert w_seg_n = "0000010" report "bad output for 6" severity failure;

        -- test 7
        w_Hex <= x"7";
        wait for 10 ns;
        assert w_seg_n = "1111000" report "bad output for 7" severity failure;

        -- test 8
        w_Hex <= x"8";
        wait for 10 ns;
        assert w_seg_n = "0000000" report "bad output for 8" severity failure;

        -- test 9
        w_Hex <= x"9";
        wait for 10 ns;
        assert w_seg_n = "0010000" report "bad output for 9" severity failure;

        -- test A
        w_Hex <= x"A";
        wait for 10 ns;
        assert w_seg_n = "0001000" report "bad output for A" severity failure;

        -- test B
        w_Hex <= x"B";
        wait for 10 ns;
        assert w_seg_n = "0000011" report "bad output for B" severity failure;

        -- test C
        w_Hex <= x"C";
        wait for 10 ns;
        assert w_seg_n = "0100111" report "bad output for C" severity failure;

        -- test D
        w_Hex <= x"D";
        wait for 10 ns;
        assert w_seg_n = "0100001" report "bad output for D" severity failure;

        -- test E
        w_Hex <= x"E";
        wait for 10 ns;
        assert w_seg_n = "0000110" report "bad output for E" severity failure;

        -- test F
        w_Hex <= x"F";
        wait for 10 ns;
        assert w_seg_n = "0001110" report "bad output for F" severity failure;
        wait;
    end process;

end behavior;
