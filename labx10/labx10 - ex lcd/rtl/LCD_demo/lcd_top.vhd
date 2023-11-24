--lcd_top.vhd
-- Escrito por Frederico Ferlini

--FUNCIONAMENTO:
--	 idx_o indica o indice do caractere a ser escrito (posição do LCD)
--	 data_i busca o dado a ser escrito em codigo ASCII
--	 um pulso em start_i inicia uma nova escrita no LCD


library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	
library work;
	use work.lcd_pkg.all;

entity lcd_top is
generic(
	TAM_DATA	: integer := 16; -- Tamanho do dado de entrada
	NUM_DATA	: integer := 10; -- Quantidade de characteres que serão escritos
	--LCD
	DIV_NUM		: integer := 500;	-- 50Mhz/500 = 100KHz = 10us
	BOOT_TIME	: integer := 2000;-- 2000/100KHz = 20ms
	WR_TIME		: integer := 5;	-- 5*10us = 50us
	CLR_TIME		: integer := 200	-- 2ms 

);
port( 
	clk_50MHz_i	   : in 	std_logic;
	rst_i		      : in	std_logic;
	start_i	      : in 	std_logic;
	data_i	      : in	std_logic_vector(TAM_DATA downto 1);
	idx_o		      : out integer range 1 to NUM_DATA;
	ready_o	      : out	std_logic;
	
	-- LCD signals
	LCD_DATA : inout std_logic_vector(7 downto 0); 	-- LCD data is a bidirectional bus...
	LCD_RS 	: out   std_logic;                		-- LCD register select
	LCD_RW  	: out   std_logic;                		-- LCD Read / nWrite
	LCD_EN  	: out   std_logic;                		-- LCD Enable
	LCD_ON  	: out   std_logic;
	LCD_BLON : out   std_logic       
);
end entity lcd_top;																
architecture behavior of lcd_top is

	constant CHAR_PER_DATA	: integer := TAM_DATA/TAM_CHAR;
	constant TOTAL_CHAR		: integer := CHAR_PER_DATA*NUM_DATA;
	
	type STATES is (IDLE,BOOT,AWAIT,CLRLCD,WRLCD,TESTWORD,LINE1,LINE2,WAITLCD1,WAITLCD2);
	signal EA, PE 	: STATES;
	
	signal clk 		: std_logic;
	
	-- signal KEY  	: std_logic_vector(3  downto 0);
   signal act     : std_logic;
	signal SW	  	: std_logic_vector(17 downto 0);
	
	signal ready	: std_logic_vector(0 downto 0);
	signal data		: std_logic_vector(NRO_BITS-2 downto 0);   
	signal cmd		: std_logic_vector(TAM_CMD-1  downto 0);   
	
	signal cnt_data	: integer range 1 to NUM_DATA;	
	signal cnt_char	: integer range 1 to CHAR_PER_DATA;
	signal ptr		   : integer range 1 to TAM_LINE*2;
	signal line_st	   : std_logic;
	signal clr_st	   : std_logic;
	
   
begin
	
	-- Atribuiçao dos dados para os sinais comandão o controlado do LCD
	clk 	<= clk_50MHz_i;
	act	<= '1' when cmd/= 0 else '0'; 

	lcd_ctrl_inst : entity work.lcd_ctrl
	generic map(
		DIV_NUM		=> DIV_NUM,
		BOOT_TIME	=> BOOT_TIME,
		WR_TIME		=> WR_TIME,
		CLR_TIME	   => CLR_TIME
	)
	port map (
      clk_i    => clk_50mhz_i,
      rst_i    => rst_i,		
		act_i		=> act,	
		cmd_i		=> cmd,	
      data_i   => data,
		ready_o	=> ready(0), 
		-- LCD
		LCD_DATA	=> LCD_DATA,
		LCD_RS 	=> LCD_RS,
		LCD_RW  	=> LCD_RW,
		LCD_EN  	=> LCD_EN,
		LCD_ON  	=> LCD_ON,
		LCD_BLON	=> LCD_BLON
	);
	
	-- Atribuiçao do proximo estado ao estado atual da maquina de estados
	process(clk,rst_i)
	begin
		if rst_i = '1' then
			EA <= IDLE;
		elsif rising_edge(clk) then
			if EA = IDLE then
				EA <= BOOT;
			else
				EA <= PE;
			end if;
		end if;
	end process;
	
	-- Processo de controle de proximo estado da maquina da estados
	-- Controle de inicializaçao e escrita
	process(EA,start_i,ptr,cnt_char,cnt_data,ready(0),line_st,clr_st)
	begin
		case EA is
		when IDLE   => PE <= IDLE;
		when BOOT	=> PE <= BOOT;
			if ready(0) = '1' then
				PE <= AWAIT;
			end if;
		when AWAIT  => PE <= AWAIT;
			if start_i = '1' then
				PE <= CLRLCD;
			end if;
		when CLRLCD	=> PE <= WAITLCD1;
		when WRLCD	=> PE <= TESTWORD;
		when TESTWORD=>PE <= WAITLCD1;
		when LINE1  => PE <= WAITLCD1;
		when LINE2  => PE <= WAITLCD1;
		when WAITLCD1=>PE <= WAITLCD1;
			if ready(0) = '0' then
				PE <= WAITLCD2; 
			end if;
		when WAITLCD2=>PE <= WAITLCD2;
			if ready(0) = '1' then
				if clr_st = '1' then
					PE <= WRLCD;
				elsif ptr = TAM_LINE+1 and line_st = '0' then
					PE <= LINE2;
				elsif ptr = 1 and line_st = '1' then
					PE <= AWAIT;
				elsif ptr = 1 and line_st = '0' then
					PE <= LINE1;
				elsif cnt_char = 1 and cnt_data = 1 then
					PE <= AWAIT;
				else
					PE <= WRLCD;
				end if;
			end if;
		when others => PE <= IDLE;
		end case;
	end process;
	
	-- Controle das saidas da maquina de estados
	process(clk,rst_i)
	begin
		if rst_i = '1' then
			cnt_data<= 1;
			cnt_char<= 1;
			ptr		<= 1;
			data	<= (others=>'0');
			cmd  	<= (others=>'0');
			line_st <= '0';
			clr_st	<= '0';
		elsif rising_edge(clk) then
			case EA is
			when IDLE   =>
			when BOOT	=>
			when AWAIT  =>
				cnt_data<= 1;
				cnt_char<= 1;
				ptr		<= 1;
				data	<= (others=>'0');
				cmd	<= (others=>'0');
				line_st <= '0';
				clr_st 	<= '0';
			when CLRLCD =>
				cmd <= CMD_CLRLCD;
				clr_st <= '1';
			when WRLCD  =>
				line_st <= '0';
				clr_st	<= '0';
				if cnt_char = CHAR_PER_DATA then
					if cnt_data = NUM_DATA then
						cnt_data <= 1;
					else
						cnt_data <= cnt_data + 1;
					end if;
 
					cnt_char <= 1;
				else 
					cnt_char <= cnt_char + 1;
				end if;
					data <= data_i(TAM_CHAR*cnt_char downto TAM_CHAR*(cnt_char-1)+1); -- pega valores de 8 em 8 (byte em byte)
				cmd <= CMD_WRLCD;
			when LINE1  =>
				data <= (others=>'0'); -- pos 0 linha 1
				cmd <= CMD_CADDR;
				line_st <= '1';
			when LINE2 =>
				data <= x"40"; --pos 0 linha 2
				cmd <= CMD_CADDR;
				line_st <= '1';
			when TESTWORD=>
				cmd  <= cmd;
				data <= data;
				if (cmd = CMD_WRLCD and (CONV_INTEGER(data) < INFERIOR or CONV_INTEGER(data) > superior or (CONV_INTEGER(data) > MEIO_INF and CONV_INTEGER(data) < MEIO_SUP))) then
					data <= (others=>'1');
				end if;
				
				if ptr = TAM_LINE*2 then
					ptr	<= 1;
				else
					ptr	<= ptr + 1;
				end if;
			when WAITLCD1=>
				data	<= data;
				cmd		<= cmd;
			when WAITLCD2=>
				data	<= (others=>'0');
				cmd		<= (others=>'0');
				
			when others =>
			end case;
		end if;
	end process;
	
	idx_o <= cnt_data;
	ready_o <= '1' when EA = AWAIT else '0';
		
end behavior;
