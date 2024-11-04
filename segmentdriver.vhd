--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
--use IEEE.STD_LOGIC_ARITH.ALL;
----use IEEE.numeric_std.ALL;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity segmentdriver is
    Port ( Distance : in unsigned (8 downto 0);
--			  Display_A : in STD_LOGIC_VECTOR (3 downto 0);
--			  Display_B : in STD_LOGIC_VECTOR (3 downto 0);
--	        Display_C : in STD_LOGIC_VECTOR (3 downto 0);
--	        Display_D : in STD_LOGIC_VECTOR (3 downto 0);
           seg_A: out STD_LOGIC;
			  seg_B: out STD_LOGIC;
			  seg_C: out STD_LOGIC;
		     seg_D: out STD_LOGIC;
	        seg_E: out STD_LOGIC;
           seg_F: out STD_LOGIC;
           seg_G: out STD_LOGIC;
			  select_Display_A: out STD_LOGIC;
			  select_Display_B: out STD_LOGIC;
			  select_Display_C: out STD_LOGIC;
			  select_Display_D: out STD_LOGIC;
			  clk: in std_logic);
end segmentdriver;

architecture Behavioral of segmentdriver is
	
	Component segmentDecoder
	Port ( Digit : in STD_LOGIC_VECTOR (3 downto 0);
           segment_A: out STD_LOGIC;
			  segment_B: out STD_LOGIC;
			  segment_C: out STD_LOGIC;
		     segment_D: out STD_LOGIC;
	        segment_E: out STD_LOGIC;
           segment_F: out STD_LOGIC;
           segment_G: out STD_LOGIC);
	end component;
	Component clock_Divider
	Port ( clk   : in  std_logic;
		    enable : in STD_LOGIC;
          reset : in  std_logic;
          data_clk : out std_logic_vector(15 downto 0));
	end component;
	Signal temporary_data : std_logic_vector (3 downto 0);
	Signal clock_word : std_logic_vector (15 downto 0);
	Signal slow_clock : std_logic;
	Signal display : integer := to_integer(Distance);
	Signal hundreds : Integer range 0 to 9 := display/100;
	Signal tens : integer range 0 to 9 := (display - hundreds*100)/10;
	Signal ones : integer range 0 to 9:= display -(hundreds*100 + tens*10);
	
	begin		
			uut: segmentDecoder Port Map(
			  Digit => temporary_data,
           segment_A => seg_A,
			  segment_B => seg_B,
			  segment_C => seg_C,
		     segment_D => seg_D,
	        segment_E => seg_E,
           segment_F => seg_F,
           segment_G => seg_G
			);
			uut1: clock_divider Port Map(
			  clk => clk,
           enable => '1',
			  reset => '0',
			  data_clk => clock_word
			);
			
	slow_clock <= clock_word(15);
			
	Process(slow_clock)
	variable Display_Selection: std_logic_vector (1 downto 0);
	Begin
	if rising_edge(slow_clock) and slow_clock = '1' then
	
	case display_Selection is
	
	when "00" => temporary_data <= "0000";
	
			  select_Display_A <= '0';
			  select_Display_B <= '1';
			  select_Display_C <= '1';
			  select_Display_D <= '1';
			  
			  display_selection := display_selection + '1';
	when "01" => temporary_data <=  STD_LOGIC_VECTOR(to_unsigned(hundreds, 4));
	
			  select_Display_A <= '1';
			  select_Display_B <= '0';
			  select_Display_C <= '1';
			  select_Display_D <= '1';
			  
			  display_selection := display_selection + '1';
	when "10" => temporary_data <= STD_LOGIC_VECTOR(to_unsigned(tens, 4));
	
			  select_Display_A <= '1';
			  select_Display_B <= '1';
			  select_Display_C <= '0';
			  select_Display_D <= '1';
			  
			  display_selection := display_selection + '1';
	when "11" => temporary_data <= STD_LOGIC_VECTOR(to_unsigned(ones, 4));
	
			  select_Display_A <= '1';
			  select_Display_B <= '1';
			  select_Display_C <= '1';
			  select_Display_D <= '0';
			  
			  display_selection := display_selection + '1';
		end case;
	end if;
	
	end process;
	
end behavioral;