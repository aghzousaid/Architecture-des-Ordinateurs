LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fsm is
	GENERIC( N : INTEGER := 16 );
	PORT ( 
		r_out : OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );	
		g_out : OUT STD_LOGIC;	
		Din_out : OUT STD_LOGIC;
		r_in : OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 );
		g_in : OUT STD_LOGIC;
		ir_in : OUT STD_LOGIC;
		a_in : OUT STD_LOGIC;
		IR : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		MUXin : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		operate : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		--sigSet : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);			-- de 0 a 7 les registres Ri, en 8 le registre A, en 9 le registre G en 10 le registre IR 
		clk, reset_n,	run:	in std_logic;
		done	:	OUT STD_LOGIC;
		st_fsm : out std_logic_vector (7 downto 0)
	);
END ENTITY;



ARCHITECTURE Behavior OF fsm IS
	-- Codes opérations
		-- Move 				000
		-- Move i 			001
		-- Add 				010
		-- Sub 				011
		-- Mult				100
	
	TYPE state_t is(	st_init,
							st_fetch, 
							st_mv_t0, st_mv_t1, 
							st_mvi_t0, st_mvi_t1,
							st_add_t0, st_add_t1, st_add_t2,
							st_sub_t0, st_sub_t1, st_sub_t2,
							--st_mult_t0, st_mult_t1, st_mult_t2,
							st_done);
	ATTRIBUTE state_encoding : STRING;
	ATTRIBUTE state_encoding OF state_t : TYPE IS "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111";
	SIGNAL current_state, futur_state: state_t;
	SIGNAL action, RX, RY: STD_LOGIC_VECTOR(2 DOWNTO 0);
	
	
BEGIN
	process(current_state, run)
	BEGIN
		if run = '1' then
			action<= IR(8 DOWNTO 6);
			RX <= IR(5 DOWNTO 3);
			RY <= IR(2 DOWNTO 0);
	
			-- Analyser l'instruction
			case current_state is
				when st_done =>
					futur_state <= st_init;
					
				when st_init =>
					futur_state <= st_fetch;
					
				-- Instruction fetch
				when st_fetch =>
					case action is
						when "000" =>
							futur_state <= st_mv_t0;
						when "001" =>
							futur_state <= st_mvi_t0;
						when "010" =>
							futur_state <= st_add_t0;
						when "011" =>
							futur_state <= st_sub_t0;
						--when "100" => 
							--futur_state <= st_mult_t0;
						when others =>
					end case;
					
				-- Move
				when st_mv_t0 =>
					futur_state <= st_mv_t1;
				when st_mv_t1 =>
					futur_state <= st_done;
					
				-- Move i
				when st_mvi_t0 =>
					futur_state <= st_mvi_t1;
				when st_mvi_t1 =>
					futur_state <= st_done;
					
				-- Addition
				when st_add_t0 =>
					futur_state <= st_add_t1;
				when st_add_t1 =>
					futur_state <= st_add_t2;
				when st_add_t2 => 
						futur_state <= st_done;
				
				-- Soustraction
				when st_sub_t0 =>
					futur_state <= st_sub_t1;
				when st_sub_t1 =>
					futur_state <= st_sub_t2;
				when st_sub_t2 => 
					futur_state <= st_done;
					
			end case;
			
			--Effectuer les actions en fonction de l'état
			case current_state is
				--INIT
				when st_init =>
					reset_0 : FOR i IN 0 TO 3 LOOP
						r_in( i ) <= '1';
					END LOOP;
									
					reset_1 : FOR i IN 0 TO 2 LOOP
						r_out( i ) <= '0';
					END LOOP;
					
					din_out <= '0';
					g_out <= '0';
					a_in <= '0';
					done <= '0';
					
					--Activer lecture prochaine instruction
					ir_in <= '1';
					
					--Etat FSM
					st_fsm <= "00000000";
					
				
				-- FETCH
				when st_fetch =>
					--Ne plus lire l'instruction
					ir_in <= '0';
					
					--Etat FSM
					st_fsm <= "00000001";
					
				
				-- MOVE
				when st_mv_t0 =>
					r_out <= RY;
					
					--Etat FSM
					st_fsm <= "00000010";
					
				when st_mv_t1 =>
					r_in <= '0' & RX;
					
					--Etat FSM
					st_fsm <= "00000011";
					
				
				-- MOVE i
				when st_mvi_t0 =>
					r_in <= '0' & RX;
					
					--Etat FSM
					st_fsm <= "00000100";
					
				when st_mvi_t1 =>
					din_out <= '1';
					
					--Etat FSM
					st_fsm <= "00000101";
					
					
				-- ADDITION
				when st_add_t0 =>
					operate <= "000";
					
					r_out <= RX;
					a_in <= '1';
					
					--Etat FSM
					st_fsm <= "00000110";
					
				when st_add_t1 =>
					a_in <= '0';
					
					r_out <= RY;
					g_in <= '1';
					
					--Etat FSM
					st_fsm <= "00000111";
					
				when st_add_t2 =>
					g_in <= '0';
					
					g_out <= '1';
					r_out <= "000"; -------- ???????????????????????????????????
					
					r_in <= '0' & RX;
					
					--Etat FSM
					st_fsm <= "00001000";
					
					
				-- SOUSTRACTION
				when st_sub_t0 =>
					operate <= "001";
					
					r_out <= RX;
					a_in <= '1';
					
					--Etat FSM
					st_fsm <= "00001001";
					
				when st_sub_t1 =>
					a_in <= '0';
					
					r_out <= RY;
					g_in <= '1';
					
					--Etat FSM
					st_fsm <= "00001010";
					
				when st_sub_t2 =>
					g_in <= '0';
					
					g_out <= '1';
					r_out <= "000"; -------- ???????????????????????????????????
					
					r_in <= '0' & RX;
					
					--Etat FSM
					st_fsm <= "00001011";
				
				
				-- DONE
				when st_done =>
					done <= '1';
					
					--Etat FSM
					st_fsm <= "00001111";
				
			end case;
		end if;
	end process;
	
	process(clk)
	BEGIN
		if rising_edge(clk) then
			if reset_n = '0'	then	
				current_state <= st_init;
			else
				current_state <= futur_state;
			end if;
		end if;
	END process;
END Behavior;