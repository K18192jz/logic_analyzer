library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_MODULE is
	
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
end UART_MODULE;









architecture Behavioral of UART_MODULE is 










signal buffer_string_tx : std_logic_vector (7 downto 0) := "00000000";
signal buffer_string_RX : std_logic_vector (9 downto 0) := "1111111111";






constant counter_TX_RX : positive := (clock_frequency_input / baude_rate_input - 1) ;
--constant counter_TX_RX : positive := 49_999_999;
signal CLK_baude_rate : std_logic := '0';
signal startsend : std_logic := '0';
signal start_the_process : std_logic := '0';






type state_tx_type is (wait_tx , load_charecter_TX , send_data_tx , done_tx);
signal state_tx : state_tx_type := wait_tx;
signal buffer_tx : std_logic_vector (10 downto 0) := "00000000000";







begin













try_rx : process (CLK_baude_rate,nRST)
variable i : integer range 8 downto 0 := 0; 
begin 
	if (nRst = '0') then
		buffer_string_RX <= "1111111111";
		
	elsif (rising_edge(CLK_baude_rate)) then
		buffer_string_RX <= RX & buffer_string_RX(9 downto 1);
		if (buffer_string_RX(0) = '0') then
			RX_buffer_out <= buffer_string_RX (8 downto 1);
			buffer_string_RX <= "1111111111";
			RECIVED_RX <= '1';
		else 
			RECIVED_RX <= '0';
		end if;
		
	end if;
end process;



DONE_TX_SEND <= startsend ; 

try_tc : process (CLK,nRST,start_the_process) 


variable i : integer range 11 downto 0 := 0;
variable counter : integer range counter_TX_RX downto 0 := 0;
begin 
	if (nRST = '0') then
		counter := 0;
		state_tx <= wait_tx;
		buffer_tx <= "00000000000";
		
	elsif (rising_edge(CLK)) then

		-----start the process-------
		if (START_TX = '1') then
			start_the_process <= '1';
		else 
			start_the_process <= '0';
		end if;
		
		if start_the_process = '1' and startsend = '0' then
			startsend <= '1';
			
		end if;
		-----------------------------
		counter := counter  + 1;
		if (counter = counter_TX_RX) then
			counter := 0;
			CLK_baude_rate <= '1';
		
		else 
			CLK_baude_rate <= '0';
		end if;
		
		---------------fsm-----------------
		case state_tx is 
		-- state 1
		when wait_tx =>
			
			if (	CLK_baude_rate = '1') then -- rising edge
				
				TX <= '1';
				if (startsend = '1') then
					state_tx <= load_charecter_TX;
					
				end if;
			end if;
		-- state 2
		when load_charecter_TX =>			
			state_tx <= send_data_tx;
			buffer_tx <= '1' & '1' & TX_buffer_in & '0';
			
		-- state 3
		when send_data_tx => 
			if (CLK_baude_rate = '1') then -- rising edge
				
				TX <= buffer_tx(i);
				i := i + 1;
				if (i = 11) then
					state_tx <= done_tx;
					i := 0;
				end if;
			end if;
		
		when done_tx =>
			state_tx <= wait_tx;
			startsend <= '0';
			
		
		end case;
	end if;
	
end process;









end Behavioral;
