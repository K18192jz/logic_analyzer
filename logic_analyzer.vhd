library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY logic_analyzer IS
PORT(
	CLK_50 : in std_logic;
	B : in std_logic;
	nRST : in std_logic;
	TX : out std_logic;
	RX : in std_logic
 );
END logic_analyzer;

architecture behavoral of logic_analyzer is



component pll_150 IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
END component;




component UART_MODULE is 

	generic (
	clock_frequency_input : integer ;
	baude_rate_input : integer 
	);
    Port ( CLK : in std_logic;
			  nRST : in std_logic;
			  TX : out std_logic;
			  RX : in std_logic;
			  START_TX : in std_logic;
			  TX_buffer_in : in std_logic_vector(7 downto 0);
			  DONE_TX_SEND : out std_logic;
			  RECIVED_RX : out std_logic := '0';
			  RX_buffer_out : out std_logic_vector(7 downto 0)
	 );
end component;
signal resived : std_logic;
signal send_tx : std_logic ; 
signal tx_state : std_logic ; 
signal ammar : std_logic_vector(7 downto 0) := x"41";
signal ammar2 : std_logic_vector(7 downto 0):= x"41";
constant one_seconde : integer := 149_999_999;
constant clock_frequency_input : integer := 150_000_000;
constant baude_rate_input : integer := 115200;
signal CLK : std_logic;
begin 

clk_pll : pll_150 
port map(
	inclk0 => CLK_50,
	c0 => CLK
);


uart : UART_MODULE

generic map ( clock_frequency_input => clock_frequency_input,
					baude_rate_input => baude_rate_input
)

port map (
	CLK => CLK,
	nRst => nRst,
	TX => TX,
	START_TX => send_tx,
	DONE_TX_SEND => tx_state,
	TX_buffer_in => ammar,
	RX => RX, 
	RECIVED_RX => resived,
	RX_buffer_out => ammar2
);



yooo : process (resived) 
begin 
	if (resived = '1') then
	ammar <= ammar2;
	end if;
end process ;


yoo : process (CLK , nRst) 
variable i : integer range one_seconde downto 0;
begin
if (rising_edge(CLK) ) then
	i := i +1;
	if (i = one_seconde) then
		i := 0;
		send_tx <= '1';
	else
		send_tx <= '0';
	end if;
end if;


end process;



end behavoral;