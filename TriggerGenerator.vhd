library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity Trigger_Generator is
    Port (
        clk : in  std_logic;
		  echo : in std_logic;		  -- Clock input
        trigger  : out std_logic     -- Trigger pulse output
    );
end Trigger_Generator;

architecture Behavioral of Trigger_Generator is
component Counter is
		generic(n: POSITIVE := 10);
    Port (
        clk   : in  std_logic;  -- Clock input
		  enable : in STD_LOGIC;
        reset : in  std_logic;  -- Reset input
        count : out integer range 0 to n --unsigned(n-1 downto 0)  -- 4-bit counter output
    );
end component;
    signal resetCounter : std_logic;
	 signal outputCounter : integer;--Unsigned(23 downto 0);
	 --signal counter_int: integer := to_integer(outputCounter);

begin
    trigg : Counter generic map(2**24) port map(clk,'1',resetCounter, outputCounter);
	 process(clk)
	 
constant ms250 : integer  := 12500000;
--constant ms250And100us : STD_LOGIC_VECTOR(23 downto 0) := "101111101100111110101000";
constant ms250And100us : integer := 12505000;
--constant ms250 : std_logic_vector(31 downto 0) := "00101100110101110011001011101000";
--constant ms250And100us : STD_LOGIC_VECTOR(31 downto 0) := "00111100110101110011001011101000";

		begin
		     if(outputCounter > ms250 and outputCounter < ms250And100us) then
					trigger <= '1';
					else
					trigger <= '0';
					end if;
					if(outputCounter = ms250And100us or outputCounter > ms250And100us or outputCounter < 0 ) then
					resetCounter <= '0';
					else
					resetCounter <= '1';
					end if; 
	
	end process;

end Behavioral;