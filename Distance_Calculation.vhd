library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Distance_calculator is
	port(
		-- Clock
		clk: in std_logic; 
		Calculation_Reset: in std_logic; 
		pulse :in std_logic; 
		Distance: out Unsigned(8 downto 0)--std_logic_vector(8 downto 0) 
	);
end Distance_calculator;

architecture Behavioral of Distance_calculator is
component Counter is
	generic(
		n: POSITIVE := 10
	);
	port(
		  clk   : in  std_logic;
		  enable : in STD_LOGIC;
        reset : in  std_logic;
        count : out integer range 0 to n--unsigned(n-1 downto 0)
	);
end component;

signal Pulse_width : integer range 0 to 2**22;--unsigned(21 downto 0);
begin
	Counter_pulse : Counter generic map(2**22) port map(clk, pulse ,not Calculation_Reset, Pulse_width);
	Distance_calculator : process(pulse)
	
	
		variable Result : integer range 0 to 1000;
		variable Multiplier : integer;
		begin
			if(pulse = '0') then
				Result := (Pulse_width/50)/ 58;
				--Result := to_integer(Multiplier(23 downto 13));
				if(Result > 458) then
					Distance <= "111111111";
				else
					Distance <= to_unsigned(Result,9);
				end if;
			end if;
		end process;
end architecture;