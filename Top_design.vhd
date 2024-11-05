library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity Top_design is
     Port (clk : in  STD_LOGIC;
           pulse : in  STD_LOGIC;
           trigger_out : out  STD_LOGIC;
			  servo_out : out STD_LOGIC;
			  reset: in STD_LOGIC;
			  topseldispA : out STD_LOGIC;
			  topseldispB : out STD_LOGIC;
			  topseldispC : out STD_LOGIC;
			  topseldispD : out STD_LOGIC;
           topseg_A: out STD_LOGIC;
			  topseg_B: out STD_LOGIC;
			  topseg_C: out STD_LOGIC;
		     topseg_D: out STD_LOGIC;
	        topseg_E: out STD_LOGIC;
           topseg_F: out STD_LOGIC;
           topseg_G: out STD_LOGIC;
			  
			  button1 : in std_logic;
			  button2 : in std_logic;
			  
			  LEDS_n : out std_logic_vector(3 downto 0);
			  
			  dram_addr : out unsigned(11 downto 0);
			  dram_dq : inout std_logic_vector(15 downto 0);
			  dram_ba : out unsigned(1 downto 0);
			  dram_dqm : out std_logic_vector(1 downto 0);
			  dram_ras_n : out std_logic;
           dram_cas_n : out std_logic;
           dram_cke : out std_logic;
           dram_clk : out std_logic;
           dram_we_n : out std_logic;
           dram_cs_n : out std_logic
				);
end Top_design;

Architecture behavioral of Top_design is

COMPONENT SDRAM is
  generic (
    -- clock frequency (in MHz)
    --
    -- This value must be provided, as it is used to calculate the number of
    -- clock cycles required for the other timing values.
    CLK_FREQ : real;

    -- 32-bit controller interface
    ADDR_WIDTH : natural := 23;
    DATA_WIDTH : natural := 32;

    -- SDRAM interface
    SDRAM_ADDR_WIDTH : natural := 12;
    SDRAM_DATA_WIDTH : natural := 16;
    SDRAM_COL_WIDTH  : natural := 9;
    SDRAM_ROW_WIDTH  : natural := 12;
    SDRAM_BANK_WIDTH : natural := 2;

    -- The delay in clock cycles, between the start of a read command and the
    -- availability of the output data.
    CAS_LATENCY : natural := 2; -- 2=below 133MHz, 3=above 133MHz

    -- The number of 16-bit words to be bursted during a read/write.
    BURST_LENGTH : natural := 2;

    -- timing values (in nanoseconds)
    --
    -- These values can be adjusted to match the exact timing of your SDRAM
    -- chip (refer to the datasheet).
    T_DESL : real := 200000.0; -- startup delay
    T_MRD  : real :=     12.0; -- mode register cycle time
    T_RC   : real :=     60.0; -- row cycle time
    T_RCD  : real :=     18.0; -- RAS to CAS delay
    T_RP   : real :=     18.0; -- precharge to activate delay
    T_WR   : real :=     12.0; -- write recovery time
    T_REFI : real :=   7800.0  -- average refresh interval
  );
  port (
    -- reset
    reset : in std_logic := '0';

    -- clock
    clk : in std_logic;

    -- address bus
    addr : in unsigned(ADDR_WIDTH-1 downto 0);

    -- input data bus
    data : in std_logic_vector(DATA_WIDTH-1 downto 0);

    -- When the write enable signal is asserted, a write operation will be performed.
    we : in std_logic;

    -- When the request signal is asserted, an operation will be performed.
    req : in std_logic;

    -- The acknowledge signal is asserted by the SDRAM controller when
    -- a request has been accepted.
    ack : out std_logic;

    -- The valid signal is asserted when there is a valid word on the output
    -- data bus.
    valid : out std_logic;

    -- output data bus
    q : out std_logic_vector(DATA_WIDTH-1 downto 0);

    -- SDRAM interface (e.g. AS4C16M16SA-6TCN, IS42S16400F, etc.)
    sdram_a     : out unsigned(SDRAM_ADDR_WIDTH-1 downto 0);
    sdram_ba    : out unsigned(SDRAM_BANK_WIDTH-1 downto 0);
    sdram_dq    : inout std_logic_vector(SDRAM_DATA_WIDTH-1 downto 0);
    sdram_cke   : out std_logic;
    sdram_cs_n  : out std_logic;
    sdram_ras_n : out std_logic;
    sdram_cas_n : out std_logic;
    sdram_we_n  : out std_logic;
    sdram_dqml  : out std_logic;
    sdram_dqmh  : out std_logic
  );
end COMPONENT

;
component Range_Sensor is
     Port (fpgaclk : in  STD_LOGIC;
           pulse : in  STD_LOGIC;
           trigger_out : out  STD_LOGIC;
			  reset: in STD_LOGIC;
			  distance_out: out Unsigned(8 downto 0)
				);
end component;

component segmentdriver
	Port (  Distance : in Unsigned (8 downto 0);
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
	end component;
	Component Servo
		PORT(
        clk  : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        pwm: OUT STD_LOGIC
		  );
		end component;
		
		
	signal distance_out : Unsigned(8 downto 0);
	
	
	signal ram_ctrl_addr    : unsigned(22 downto 0);
	signal ram_ctrl_data    : std_logic_vector(31 downto 0);
	signal ram_ctrl_we      : std_logic;
	signal ram_ctrl_req     : std_logic;
	signal ram_ctrl_ack     : std_logic;
	signal ram_ctrl_valid   : std_logic;
	signal ram_ctrl_q       : std_logic_vector(31 downto 0);

	signal wr_ram_ctrl_addr    : unsigned(22 downto 0);
	signal wr_ram_ctrl_data    : std_logic_vector(31 downto 0);
	signal wr_ram_ctrl_we      : std_logic;
	signal wr_ram_ctrl_req     : std_logic;

	signal rd_ram_ctrl_addr    : unsigned(22 downto 0);
	signal rd_ram_ctrl_data    : std_logic_vector(31 downto 0);
	signal rd_ram_ctrl_we      : std_logic;
	signal rd_ram_ctrl_req     : std_logic;

	signal last_read_data : std_logic_vector(31 downto 0) := (others => '0');

	signal rdcnt : natural range 0 to 8_388_607 := 0;

	type main_state_type is (IDLE, WRITING_CMD, WRITING_ACK,  READING, READING_BUTTON_RST);
	signal main_state : main_state_type := IDLE;

	type reading_state_type is (IDLE, START, ACKNOWLEDGED, TERMINATE);
	signal reading_state : reading_state_type := IDLE;

	signal wrcnt : natural range 0 to 8_388_607 := 0;
		
begin

main : process(clk, reset)
begin
if rising_edge(clk) and reset = '1' then
    case main_state is
        when IDLE =>
            if button1 = '0' then
                main_state <= WRITING_CMD;
                LEDS_N <= "0101";
            end if;
        when WRITING_CMD =>
            wr_ram_ctrl_addr <= to_unsigned(wrcnt, 23);
            wr_ram_ctrl_data <= std_logic_vector(to_unsigned(wrcnt,32));
            wr_ram_ctrl_we <= '1';
            wr_ram_ctrl_req <= '1';
            main_state <= WRITING_ACK;
            LEDS_N <= "1010";
        when WRITING_ACK =>
            if ram_ctrl_ack = '1' then
                if wrcnt < 8_388_607 then
                    wrcnt <= wrcnt + 1;
                    wr_ram_ctrl_addr <= to_unsigned(wrcnt, 23);
                    wr_ram_ctrl_data <=  std_logic_vector(to_unsigned(wrcnt,32));
                    wr_ram_ctrl_we <= '1';
                    wr_ram_ctrl_req <= '1';
                    LEDS_n <= std_logic_vector(to_unsigned(wrcnt, 23))(22 downto 19);
                    main_state <= WRITING_ACK;
                else
                    wrcnt <= 0;
                    wr_ram_ctrl_we <= '0';
                    wr_ram_ctrl_req <= '0';
                    main_state <= READING;
                end if;
            end if;

        when READING =>
            if button1 = '1' then
                main_state <= READING_BUTTON_RST;
            end if;
        
        when READING_BUTTON_RST =>
        LEDs_n <= last_read_data(9 downto 6);
            if button1 = '0' then
                main_state <= IDLE;
            end if;

    end case;
end if;
end process;

process(main_state)
begin
    if main_state = WRITING_CMD or main_state = WRITING_ACK then
        ram_ctrl_addr  <= wr_ram_ctrl_addr;
        ram_ctrl_data  <= wr_ram_ctrl_data;
        ram_ctrl_we    <= wr_ram_ctrl_we  ;
        ram_ctrl_req   <= wr_ram_ctrl_req ;
    elsif main_state = READING or main_state = READING_BUTTON_RST then
        ram_ctrl_addr    <= rd_ram_ctrl_addr;
        ram_ctrl_data  <= (others => 'Z');
        ram_ctrl_we      <= rd_ram_ctrl_we  ;
        ram_ctrl_req     <= rd_ram_ctrl_req ;
    end if;
end process;

reading_addr : process(clk)

begin
    if rising_edge(clk) and reset = '1' and (main_state = READING or main_state = READING_BUTTON_RST) then
        case reading_state is
            when IDLE =>
                if button2 = '0' then
                    reading_state <= START;
                    rdcnt <= rdcnt + 1;
                end if;
            when START =>
                if ram_ctrl_ack = '1' then
                    rd_ram_ctrl_req <= '0';
                    reading_state <= ACKNOWLEDGED;
                else
                    rd_ram_ctrl_addr <= to_unsigned(rdcnt, 23);
                    rd_ram_ctrl_we <= '0';
                    rd_ram_ctrl_req <= '1';
                end if;
            when ACKNOWLEDGED =>
                if ram_ctrl_valid = '1' then
                    last_read_data <= ram_ctrl_q;
                    reading_state <= TERMINATE;
                end if;
            when TERMINATE =>
                if button2 = '1' then
                    reading_state <= IDLE;
                end if;
        end case;
    end if;
end process reading_addr;
		
rangesensor: Range_Sensor PORT MAP(clk, pulse, trigger_out, reset, distance_out);	
	
segment_driver: segmentdriver PORT MAP( 
			  Distance => distance_out,
           seg_A => topseg_A,
			  seg_B => topseg_B,
			  seg_C => topseg_C,
		     seg_D => topseg_D,
	        seg_E => topseg_E,
           seg_F => topseg_F,
           seg_G => topseg_G,
			  select_Display_A => topseldispA,
			  select_Display_B => topseldispB,
			  select_Display_C => topseldispC,
			  select_Display_D => topseldispD,
			  clk => clk);
servo_pwm: Servo PORT MAP(clk, reset, servo_out);

sdram_controller_instance : sdram
generic map(
    CAS_LATENCY =>        2,
    CLK_FREQ    =>    50.0,
    T_DESL      => 200000.0,
    T_MRD       =>     14.0,
    T_RC        =>     60.0,
    T_RCD       =>     15.0,
    T_RP        =>     15.0,
    T_WR        =>     15.0,
    T_REFI      =>  20000.0
)
port map(
    reset       =>  reset,
    clk         =>  clk,
    addr        =>  ram_ctrl_addr,
    data        =>  ram_ctrl_data,
    we          =>  ram_ctrl_we,
    req         =>  ram_ctrl_req,
    ack         =>  ram_ctrl_ack,
    valid       =>  ram_ctrl_valid,
    q           =>  ram_ctrl_q,

    sdram_a     =>  dram_addr,
    sdram_ba    =>  dram_ba,
    sdram_dq    =>  dram_dq,
    sdram_cke   =>  dram_cke,
    sdram_cs_n  =>  dram_cs_n,
    sdram_ras_n =>  dram_ras_n,
    sdram_cas_n =>  dram_cas_n,
    sdram_we_n  =>  dram_we_n,
    sdram_dqml  =>  dram_dqm(0),
    sdram_dqmh  =>  dram_dqm(1)
);

end behavioral;