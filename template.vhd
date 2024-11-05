library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

use work.CLK100M;
use work.sdram;

entity SynthFPGA is
port (
    clk50 : in std_logic;
    dram_addr : out unsigned(12 downto 0);
    dram_dq : inout std_logic_vector(15 downto 0);
    dram_ba : out unsigned(1 downto 0);
    dram_dqm : out std_logic_vector(1 downto 0);
    dram_ras_n : out std_logic;
    dram_cas_n : out std_logic;
    dram_cke : out std_logic;
    dram_clk : out std_logic;
    dram_we_n : out std_logic;
    dram_cs_n : out std_logic;
    LEDS_n : out std_logic_vector(7 downto 0);
    button1 : in std_logic;
    button2 : in std_logic;
    dummy_out : out std_logic_vector(31 downto 0)
);
end entity SynthFPGA;

architecture rtl of SynthFPGA is

signal clkmain : std_logic;
signal pll_locked : std_logic;
signal clk48k_audio : std_logic;
signal clk48k_audio_locked : std_logic;
signal initialized : std_logic := '0';
signal reset : std_logic := '0';

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

dram_clk <= clkmain;

CLK_100M_I : CLK100M
port map(
    inclk0      =>  clk50,
    c0          =>  clkmain,
    c1          =>  clk48k_audio,
    locked      =>  pll_locked
);

main : process(clkmain, reset)
begin
if reset = '1' then
--
elsif rising_edge(clkmain) and pll_locked = '1' then
    case main_state is
        when IDLE =>
            if button1 = '0' then
                main_state <= WRITING_CMD;
                LEDS_N <= "01010101";
            end if;
        when WRITING_CMD =>
            wr_ram_ctrl_addr <= to_unsigned(wrcnt, 23);
            wr_ram_ctrl_data <= std_logic_vector(to_unsigned(wrcnt,32));
            wr_ram_ctrl_we <= '1';
            wr_ram_ctrl_req <= '1';
            main_state <= WRITING_ACK;
            LEDS_N <= "10101010";
        when WRITING_ACK =>
            if ram_ctrl_ack = '1' then
                if wrcnt < 8_388_607 then
                    wrcnt <= wrcnt + 1;
                    wr_ram_ctrl_addr <= to_unsigned(wrcnt, 23);
                    wr_ram_ctrl_data <=  std_logic_vector(to_unsigned(wrcnt,32));
                    wr_ram_ctrl_we <= '1';
                    wr_ram_ctrl_req <= '1';
                    LEDS_n <= std_logic_vector(to_unsigned(wrcnt, 23))(22 downto 15);
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
        LEDs_n <= last_read_data(9 downto 2);
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

reading_addr : process(clkmain)

begin
    if rising_edge(clkmain) and pll_locked = '1' and (main_state = READING or main_state = READING_BUTTON_RST) then
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

dummy_out <= last_read_data;

sdram_controller_instance : entity sdram
generic map(
    CAS_LATENCY =>        2,
    CLK_FREQ    =>    133.0,
    T_DESL      => 200000.0,
    T_MRD       =>     14.0,
    T_RC        =>     60.0,
    T_RCD       =>     15.0,
    T_RP        =>     15.0,
    T_WR        =>     15.0,
    T_REFI      =>  20000.0
)
port map(
    reset       =>  not pll_locked,
    clk         =>  clkmain,
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

end architecture rtl;