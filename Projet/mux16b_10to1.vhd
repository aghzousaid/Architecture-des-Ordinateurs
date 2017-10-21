LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_nbit_10to1 IS
	generic (Nm : integer);
		PORT (DIN, R0, R1, R2, R3, R4, R5, R6, R7, G	: IN	STD_LOGIC_VECTOR(Nm-1 DOWNTO 0);
			r_out : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
			Gout : IN STD_LOGIC;
			Din_out : IN STD_LOGIC;			
			M : OUT	STD_LOGIC_VECTOR(Nm-1 DOWNTO 0)
		);
END mux_nbit_10to1;

ARCHITECTURE Behavior OF mux_nbit_10to1 IS
BEGIN
	process (r_out, Gout, Din_out)
	begin
		case r_out is
			when "000" =>
				M <= R0;
			when "001" =>
				M <= R1;
			when "010" =>
				M <= R2;	
			when "011" =>
				M <= R3;
			when "100" =>
				M <= R4;
			when "101" =>
				M <= R5;
			when "110" =>
				M <= R6;
			when "111" =>
				M <= R7;		
		end case;
		
		case Gout is
			when '1' => 
				M <= G;
			when others =>
		end case;
		
		case Din_out is
			when '1' =>
				M <= DIN;
			when others =>
		end case;
	end process;
END Behavior;