LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CPU IS
	GENERIC ( N : INTEGER := 16 );
	PORT(
		Din : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
		clock : IN STD_LOGIC;
		run : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		
		sortie : OUT STD_LOGIC_VECTOR( ( N- 1 ) DOWNTO 0 );
		done : OUT STD_LOGIC;
		
		etat_FSM : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0 );
		codeOP : OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );
		estEcritureRegistreInstruction : OUT STD_LOGIC
	);
	
END ENTITY;

ARCHITECTURE CPU_bhv OF CPU IS
	-- Définition accumulateur
	COMPONENT Accumulateur IS 
		GENERIC( N : INTEGER := 16 );
		
			PORT (
				Ain : IN STD_LOGIC;
				Gin : IN STD_LOGIC;
				COD_op : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
				
				entree : IN STD_LOGIC_VECTOR(( N - 1) DOWNTO 0);
				Gout : OUT STD_LOGIC_VECTOR(( N - 1 ) DOWNTO 0);
				
				clock : IN STD_LOGIC
			);
	END COMPONENT;
	
	-- Définition registre N bits
	COMPONENT RegistreNBit IS
		GENERIC ( n : INTEGER := 16 );
			PORT ( entree : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
						sortie : OUT STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
						selecteur : IN STD_LOGIC;
						reset : IN STD_LOGIC;
						clock : IN STD_LOGIC );
	END COMPONENT;
	
	-- Définition controleur
	COMPONENT Controleur IS
		GENERIC( N : INTEGER := 16 );
			PORT(
				--
				-- Flux de données
				--
				-- Controle sortie registre par multiplexeur dans flux de données
				r_out : OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );
				
				-- Controle sortie ALU dans flux de données
				g_out : OUT STD_LOGIC;
				
				-- Controle entrée Din
				Din_out : OUT STD_LOGIC;
				
				--
				-- Activation 
				--
				-- Controle entrée registre pour écriture
				r_in : OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 );
				
				-- Commande écriture dans G
				g_in : OUT STD_LOGIC;
				
				-- Commande écriture dans registre instruction
				ir_in : OUT STD_LOGIC;
				
				-- Commande d'écriture dans A (Registre pour ALU)
				a_in : OUT STD_LOGIC;
				
				--
				-- Registre instruction
				--
				-- Entrée registre instructions
				ir : IN STD_LOGIC_VECTOR( 8 DOWNTO 0 );
				
				--
				-- Opération à effectuer ALU
				--
				op_alu : OUT STD_LOGIC_VECTOR( 2 DOWNTO 0 );
				
				-- Set
				run : IN STD_LOGIC;
				
				-- Reset
				reset : IN STD_LOGIC;
				
				-- Clock
				clock : IN STD_LOGIC;
				
				-- Fin de l'opération
				done : OUT STD_LOGIC;
				
				-- Code op actuel
				etat_FSM : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0 )
			);
	END COMPONENT;
	
	-- Définition multiplexeur
	COMPONENT Multiplexeur IS 
		GENERIC( N : INTEGER := 16 );
			PORT(
				--entrées
				r_in0 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				r_in1 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				r_in2 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				r_in3 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				r_in4 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				r_in5 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				r_in6 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				r_in7 : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				Din : IN STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
				Gin : IN STD_LOGIC_VECTOR( ( N -1 ) DOWNTO 0 );
				
				-- selecteur
				r_out : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
				Gout : IN STD_LOGIC;
				Din_out : IN STD_LOGIC;
				
				-- sortie 
				sortie : OUT STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 )
			);
	END COMPONENT;
	
	-- Signaux
	SIGNAL tmp_Ain, tmp_Gin, tmp_instruction_in, tmp_cout, tmp_gout, tmp_din_out : STD_LOGIC;
	SIGNAL tmp_COD_op : STD_LOGIC_VECTOR( 2 DOWNTO 0 );
	SIGNAL tmp_bus : STD_LOGIC_VECTOR( ( N - 1 ) DOWNTO 0 );
	SIGNAL tmp_rout : STD_LOGIC_VECTOR( 2 DOWNTO 0 );
	SIGNAL tmp_rin : STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	SIGNAL tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4, tmp_reg5, tmp_reg6, tmp_reg7, tmp_G : STD_LOGIC_VECTOR ( ( N - 1 ) DOWNTO 0 );
	SIGNAL tmp_instruction : STD_LOGIC_VECTOR( 8 DOWNTO 0 );
	
	SIGNAL selecteurRIn : STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	
	BEGIN
		-- Controleur
		controleur0 : Controleur GENERIC MAP( N ) PORT MAP(
			tmp_rout,
			tmp_gout,
			tmp_din_out,
			tmp_rin,

			tmp_Gin,
			tmp_instruction_in,
			tmp_Ain,

			tmp_instruction,
		
			tmp_COD_op,
			run,
			reset,
			
			clock,
			done,
			
			etat_FSM
		);

		-- Registre d'instructions
		reg_instruction : RegistreNBit GENERIC MAP( 9 ) PORT MAP(
			Din( 8 DOWNTO 0 ),
			tmp_instruction,
			tmp_instruction_in,
			reset,
			clock
		);
		
		-- Debogage code OP
		codeOP <= tmp_instruction( 8 DOWNTO 6 );
		
		-- Débogage écriture registre instruction
		estEcritureRegistreInstruction <= tmp_instruction_in;
		
		-- Demultiplexer selecteur RIn
		WITH tmp_rin SELECT
			selecteurRIn <= "00000001" WHEN "0000",
				"00000010" WHEN "0001",
				"00000100" WHEN "0010",
				"00001000" WHEN "0011",
				"00010000" WHEN "0100",
				"00100000" WHEN "0101",
				"01000000" WHEN "0110",
				"10000000" WHEN "0111",
				"00000000" WHEN OTHERS;
			
		-- Registres
		reg0 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg0,
			selecteurRIn( 0 ),
			reset,
			clock );
		reg1 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg1,
			selecteurRIn( 1 ),
			reset,
			clock );
		reg2 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg2,
			selecteurRIn( 2 ),
			reset,
			clock );
		reg3 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg3,
			selecteurRIn( 3 ),
			reset,
			clock );
		reg4 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg4,
			selecteurRIn( 4 ),
			reset,
			clock );
		reg5 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg5,
			selecteurRIn( 5 ),
			reset,
			clock );
		reg6 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg6,
			selecteurRIn( 6 ),
			reset,
			clock );
		reg7 : RegistreNBit GENERIC MAP ( N ) PORT MAP( tmp_bus,
			tmp_reg7,
			selecteurRIn( 7 ),
			reset,
			clock );
		
		-- Multiplexeur/Chemin de données
		multiplexeur0 : Multiplexeur GENERIC MAP ( N ) PORT MAP (
				tmp_reg0,
				tmp_reg1,
				tmp_reg2,
				tmp_reg3,
				tmp_reg4,
				tmp_reg5,
				tmp_reg6,
				tmp_reg7,
				Din,
				tmp_G,
				tmp_rout,
				tmp_gout,
				tmp_din_out,
				tmp_bus
		);
		
		-- Copier bus vers sortie
		sortie <= tmp_bus;
		
		-- Accumulateur
		accumulateur0 : Accumulateur GENERIC MAP ( N ) PORT MAP(
				tmp_Ain,
				tmp_Gin,
				tmp_COD_op,
				tmp_bus,
				tmp_G, 
				clock
		);
END ARCHITECTURE;

