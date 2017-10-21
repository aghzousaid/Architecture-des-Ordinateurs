LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY processeur is
	generic (N : integer :=16);
	PORT ( 	DIN	:	IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				resetn, clock, run : IN STD_LOGIC;
				DONE	:	OUT STD_LOGIC;
				busWires	:	OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				etat_FSM : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0 );
				codeOP : OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );
				est_IRin : OUT STD_LOGIC
				); 
END processeur;

ARCHITECTURE Behavior OF processeur IS
	COMPONENT fsm
		GENERIC( N : INTEGER := 16 );
		PORT (r_out : OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );	
				g_out : OUT STD_LOGIC;	
				Din_out : OUT STD_LOGIC;
				r_in : OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 );
				g_in : OUT STD_LOGIC;
				ir_in : OUT STD_LOGIC;
				a_in : OUT STD_LOGIC;
				IR : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
				operate : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				--sigSet : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);			-- de 0 a 7 les registres Ri, en 8 le registre A, en 9 le registre G en 10 le registre IR 
				clk, reset_n,	run:	in std_logic;
				done	:	OUT STD_LOGIC;
				st_fsm : out std_logic_vector (7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT registernbit 
		generic (Nr : INTEGER);
		port( Rin	:	in std_logic_vector (Nr-1 downto 0);
				Rout	:	out std_logic_vector (Nr-1	downto 0);
				setR, clk, reset_n	:	in std_logic
			);
	END COMPONENT;
	
	COMPONENT mux_nbit_10to1
		generic (Nm : integer);
		PORT (DIN, R0, R1, R2, R3, R4, R5, R6, R7, G	: IN	STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			r_out : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
			Gout : IN STD_LOGIC;
			Din_out : IN STD_LOGIC;			
			M : OUT	STD_LOGIC_VECTOR(Nm-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT accumulateur
		GENERIC( N : INTEGER := 16 );
		PORT (Ain : IN STD_LOGIC;
				Gin : IN STD_LOGIC;
				cod_op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				entree : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
				Gout : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
				clock : IN STD_LOGIC
		);
	END COMPONENT;
	
	---------- DEBUT DES SIGNAUX ------------------
	SIGNAL tmp_Ain, tmp_Gin, tmp_instruction_in, tmp_cout, tmp_gout, tmp_din_out : STD_LOGIC;
	
	SIGNAL REGin: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	SIGNAL IRout: STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL R0out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL R1out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL R2out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL R3out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL R4out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL R5out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL R6out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL R7out: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL Aout: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL Gout: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL tmp_bus : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	
	SIGNAL tmp_rin : STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	SIGNAL tmp_rout : STD_LOGIC_VECTOR( 2 DOWNTO 0 );
			
	SIGNAL overFlow: STD_LOGIC;
	SIGNAL opSelect: STD_LOGIC_VECTOR(2 DOWNTO 0);
	
	SIGNAL IRout_in: STD_LOGIC;

	----------  FIN DES SIGNAUX  ------------------
	
	
	BEGIN 	

		finalState: fsm PORT MAP (tmp_rout, tmp_gout, tmp_din_out, tmp_rin, tmp_Gin, IRout_in, tmp_Ain, IRout, opSelect, clock, resetn, run, DONE, etat_FSM);
	
				
		IR: registernbit
			GENERIC MAP (9)
			PORT MAP (DIN(15 DOWNTO 7), IRout, IRout_in, clock, resetn);
			
			
		-- Debogage code OP
		codeOP <= IRout( 8 DOWNTO 6 );
		
		-- Débogage écriture registre instruction
		est_IRin <= IRout_in;
		
		-- Demultiplexer selecteur RIn
		WITH tmp_rin SELECT
			REGin <= "00000001" WHEN "0000",
				"00000010" WHEN "0001",
				"00000100" WHEN "0010",
				"00001000" WHEN "0011",
				"00010000" WHEN "0100",
				"00100000" WHEN "0101",
				"01000000" WHEN "0110",
				"10000000" WHEN "0111",
				"00000000" WHEN OTHERS;
				
		
		R0: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R0out, REGin(0), clock, resetn);
			
		R1: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R1out, REGin(1), clock, resetn);
			
		R2: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R2out, REGin(2), clock, resetn);
			
		R3: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R3out, REGin(3), clock, resetn);
			
		R4: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R4out, REGin(4), clock, resetn);
			
		R5: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R5out, REGin(5), clock, resetn);
			
		R6: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R6out, REGin(6), clock, resetn);
			
		R7: registernbit
			GENERIC MAP (N)
			PORT MAP (tmp_bus, R7out, REGin(7), clock, resetn);
		
					
		mux: mux_nbit_10to1 GENERIC MAP (N) PORT MAP (DIN, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, tmp_rout, tmp_gout, tmp_din_out, tmp_bus);
		
		busWires <= tmp_bus;
		
		ACC: accumulateur GENERIC MAP (N) PORT MAP (tmp_Ain, tmp_Gin, opSelect, tmp_bus, Gout, clock);
				
END Behavior;