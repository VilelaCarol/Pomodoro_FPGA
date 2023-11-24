library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity teclado_base is
generic
(
   DEBOUNCE : integer := 1000 -- Debounce time to avoid switch bounce interference
);
port(
   clk_i         : in std_logic;
   btn_inc_i     : in std_logic; -- Button "+"
   btn_dec_i     : in std_logic; -- Button "-"
   btn_enter_i   : in std_logic; -- Button "Enter"
   btn_start_i   : in std_logic; -- Button "Start"
   btn_reset_i   : in std_logic; -- Button "Reset"
   btn_state_o   : out std_logic_vector (4 downto 0); -- Buttons' states
   ready_o       : out std_logic -- Indicates if a button press is valid
);
end teclado_base;


architecture behavior of teclado_base is

   signal btn_state_int : std_logic_vector(4 downto 0);
   signal stable_state  : std_logic_vector(4 downto 0);
   signal debounce_counter : integer range 0 to DEBOUNCE := 0;
	

begin

   -- Process to handle buttons' state
   process (clk_i)
   begin
      if rising_edge(clk_i) then
         -- Simple debounce mechanism
         if btn_inc_i = '1' or btn_dec_i = '1' or btn_enter_i = '1' or btn_start_i = '1' or btn_reset_i = '1' then
            if debounce_counter < DEBOUNCE then
               debounce_counter <= debounce_counter + 1;
            else
               -- Once the counter has reached the debounce threshold, consider the input stable
               stable_state(0) <= btn_inc_i;
               stable_state(1) <= btn_dec_i;
               stable_state(2) <= btn_enter_i;
               stable_state(3) <= btn_start_i;
               stable_state(4) <= btn_reset_i;
               ready_o <= '1'; -- Indicate that a stable button press has been detected
            end if;
         else
            debounce_counter <= 0; -- Reset the counter if no button is pressed
            stable_state <= (others => '0');
            ready_o <= '0'; -- No button press is currently valid
         end if;
      end if;
   end process;
   
   -- Output the stable state of the buttons
   btn_state_o <= stable_state;

end behavior;
