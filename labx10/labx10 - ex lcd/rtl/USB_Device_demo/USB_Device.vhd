library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity USB_Device is
generic(
	CLOCK_PERIOD : integer := 20
);

port(
	clk_i				:	in std_logic;
	rst_i				: 	in	std_logic;
	wr_i				: 	in std_logic;
	dado_wr_i		:	in std_logic_vector (7 downto 0);
	dado_rd_o		: 	out std_logic_vector (7 downto 0);
	rd_ready_o		:	out std_logic;
	wr_ready_o		: 	out std_logic;
	-- USB DEVICE 
	USB_RXFn			:	in std_logic;
	USB_TXEn			:	in std_logic;
	USB_POWERENn 	: 	in std_logic;
	USB_RD 			: 	out std_logic;
	USB_WR 			: 	out std_logic;
	USB_D 			: 	inout std_logic_vector(7 downto 0)
	);
end USB_Device;

architecture behavior of USB_Device is

signal count : integer range 0 to 100 := 0;
signal rd_usb, wr_usb, dir_usb : std_logic;
signal write_usb : std_logic_vector(7 downto 0) := (others => '0');

begin

process(clk_i, rst_i) 

begin
if rst_i = '1' then
	count <= 0;
	rd_usb <= '1';
	wr_usb <= '0';
	dir_usb <= '0';
	write_usb <= (others => '0');
	wr_ready_o <= '1';
	rd_ready_o <= '0';
elsif rising_edge(clk_i) then
	if USB_POWERENn = '1' then
		rd_usb <= '1';
		wr_usb <= '0';
		dir_usb <= '0';
	else
		if count < 100 then
			count <= count + 1;
		end if;
		if USB_RXFn = '0' then
			rd_ready_o <= '0';
			dir_usb <= '0';
			if rd_usb = '1' then
				rd_usb <= '0';
				count <= 1;
			elsif (count*CLOCK_PERIOD) >= 50 then
				rd_usb <= '1';
				rd_ready_o <= '1';
			end if;
			if rd_usb = '0' and (count*CLOCK_PERIOD) >= 20 then
				dado_rd_o <= USB_D;
			end if;
		elsif USB_TXEn = '0' then
			wr_ready_o <= '1';
			if  wr_i = '1' then 
				dir_usb <= '1';
				if wr_usb = '0' then
					wr_usb <= '1';
					write_usb <= dado_wr_i;
					count <= 1;
					wr_ready_o <= '0';
				elsif wr_usb = '1' and (count*CLOCK_PERIOD) >= 50 then
					wr_usb <= '0';
					dir_usb <= '0';
				end if;
			end if;
		end if;
	end if;
end if;
end process;

USB_D <= write_usb when dir_usb = '1' else
			(others => 'Z');
USB_RD <= rd_usb;
USB_WR <= wr_usb;

end behavior;