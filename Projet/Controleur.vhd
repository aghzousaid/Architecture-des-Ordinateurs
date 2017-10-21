LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Controleur IS
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
END ENTITY;

ARCHITECTURE Controleur_bhv OF Controleur IS
	-- Codes opérations
		-- Move 				000
		-- Move immediate 001
		-- Add 				010
		-- Substract 		011
		-- Multiply			100
	
	-- Etats FSM
	TYPE state_type IS (
		-- Idle
		ETAT_IDLE,
		
		-- Instruction Fetch
		ETAT_INF,
		
		-- Move
		ETAT_MV_T0,
		ETAT_MV_T1,
		
		-- Move immediate
		ETAT_MVI_T0,
		ETAT_MVI_T1,
		
		-- Add
		ETAT_ADD_T0,
		ETAT_ADD_T1,
		ETAT_ADD_T2,
		
		-- Substract
		ETAT_SUB_T0,
		ETAT_SUB_T1,
		ETAT_SUB_T2,
		
		-- Multiply
		ETAT_MUL_T0,
		ETAT_MUL_T1,
		ETAT_MUL_T2,
	
		-- Done
		ETAT_DONE );
	ATTRIBUTE state_encoding : STRING;
	ATTRIBUTE state_encoding OF state_type : TYPE IS "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111";
	
	-- Etat actuel/futur de la FSM
	SIGNAL etat_actuel, etat_futur : state_type;
	
	-- Gestion flux de données
	BEGIN				
		PROCESS( etat_actuel, run )
			BEGIN
				IF run = '1' THEN
					-- Analyser l'instruction
					CASE etat_actuel IS
						-- Etat final, retour à l'état initial
						WHEN ETAT_DONE =>
							etat_futur <= ETAT_IDLE;
							
						-- Instruction fetch, 2 étapes
						WHEN ETAT_IDLE =>
							etat_futur <= ETAT_INF;
							
						WHEN ETAT_INF =>
							-- Traitement code opération
							CASE ir( 8 DOWNTO 6 ) IS
								WHEN "000" =>
									etat_futur <= ETAT_MV_T0;
								WHEN "001" =>
									etat_futur <= ETAT_MVI_T0;
								WHEN "010" =>
									etat_futur <= ETAT_ADD_T0;
								WHEN "011" =>
									etat_futur <= ETAT_SUB_T0;
								WHEN "100" =>
									etat_futur <= ETAT_MUL_T0;
								WHEN OTHERS =>
							END CASE;
					
						-- Move
						WHEN ETAT_MV_T0 =>
							etat_futur <= ETAT_MV_T1;
						WHEN ETAT_MV_T1 =>
							etat_futur <= ETAT_DONE;
							
						-- Move immediate (Instruction puis valeur)
						WHEN ETAT_MVI_T0 =>
							etat_futur <= ETAT_MVI_T1;
						WHEN ETAT_MVI_T1 =>
							etat_futur <= ETAT_DONE;
							
						WHEN ETAT_ADD_T0 =>
							etat_futur <= ETAT_ADD_T1;
						WHEN ETAT_ADD_T1 =>
							etat_futur <= ETAT_ADD_T2;
						WHEN ETAT_ADD_T2 =>
							etat_futur <= ETAT_DONE;
							
						WHEN ETAT_SUB_T0 =>
							etat_futur <= ETAT_SUB_T1;
						WHEN ETAT_SUB_T1 =>
							etat_futur <= ETAT_SUB_T2;
						WHEN ETAT_SUB_T2 =>
							etat_futur <= ETAT_DONE;
							
						WHEN ETAT_MUL_T0 =>
						
						WHEN OTHERS =>
							
					END CASE;
					
					-- Gérer les actions en fonction de l'état
					CASE etat_actuel IS
						--------------
						-- Idle: Reset
						--------------
						WHEN ETAT_IDLE =>
							-- Reset tout
								-- Commande entrée registre
									reset_tout0 : FOR i IN 0 TO 3 LOOP
										r_in( i ) <= '1';
									END LOOP;
								-- Commande sortie registre
									reset_tout1 : FOR i IN 0 TO 2 LOOP
										r_out( i ) <= '0';
									END LOOP;
								-- Din out
									Din_out <= '0';
								-- G out
									g_out <= '0';
								-- A in
									a_in <= '0';
								-- G in
									g_in <= '0';
								-- Done
									done <= '0';
									
							-- Activer lecture prochaine instruction
							ir_in <= '1';
									
							-- Etat FSM
							etat_FSM <= "00000000";
							
						--------------------
						-- Instruction fetch
						--------------------
						WHEN ETAT_INF =>
							-- Ne plus lire l'instruction
							ir_in <= '0';
							
							-- Etat FSM
							etat_FSM <= "00000001";
							
						-----
						-- MV
						-----
						WHEN ETAT_MV_T0 =>
							-- Traitement ry
							r_out <= ir( 2 DOWNTO 0 );
							
							-- Etat FSM
							etat_FSM <= "00000010";
							
						WHEN ETAT_MV_T1 =>
							-- Traitement rx
							r_in <= '0' & ir( 5 DOWNTO 3 );
							
							-- Etat FSM
							etat_FSM <= "00000011";
							
						------
						-- MVI
						------
						WHEN ETAT_MVI_T0 =>
							-- Traitement rx
							r_in <= '0' & ir( 5 DOWNTO 3 );
							
							-- Etat FSM
							etat_FSM <= "00000100";
						WHEN ETAT_MVI_T1 =>
							-- Faire passer Din dans le multiplexeur
							Din_out <= '1';
							
							-- Etat FSM
							etat_FSM <= "00000101";
							
						------
						-- Add
						------
						WHEN ETAT_ADD_T0 =>
							-- Définir l'opération à réaliser
							op_alu <= "000";
							
							
							-- Ain <- Rx
							r_out <= ir( 5 DOWNTO 3 );
							a_in <= '1';

							-- Etat FSM
							etat_FSM <= "00000110";
							
						WHEN ETAT_ADD_T1 =>
							-- Désactiver entrée
							a_in <= '0';
						
							-- G <- Rx + Ry
							r_out <= ir( 2 DOWNTO 0 );
							g_in <= '1';
							
							-- Etat FSM
							etat_FSM <= "00000111";
							
						WHEN ETAT_ADD_T2 =>
							-- Désactiver entrée
							g_in <= '0';
							
							-- Définir sortie
							g_out <= '1';
							r_out <= "000";
							
							-- Traitement rx
							r_in <= '0' & ir( 5 DOWNTO 3 );
							
							-- Etat FSM
							etat_FSM <= "00001000";
							
							
						---------------
						-- Substraction
						---------------
						WHEN ETAT_SUB_T0 =>
							-- Définir l'opération à réaliser
							op_alu <= "001";
							
							-- Ain <- Rx
							r_out <= ir( 5 DOWNTO 3 );
							a_in <= '1';
						
							-- Etat FSM
							etat_FSM <= "00001001";
						WHEN ETAT_SUB_T1 =>
							-- Désactiver entrée
							a_in <= '0';
						
							-- G <- Rx + Ry
							r_out <= ir( 2 DOWNTO 0 );
							g_in <= '1';
							
							-- Etat FSM
							etat_FSM <= "00001010";
							
						WHEN ETAT_SUB_T2 =>
							-- Désactiver entrée
							g_in <= '0';
							
							-- Définir sortie
							g_out <= '1';
							r_out <= "000";
							
							-- Traitement rx
							r_in <= '0' & ir( 5 DOWNTO 3 );
							
							-- Etat FSM
							etat_FSM <= "00001011";
						
						-----------
						-- Multiply
						-----------
						WHEN ETAT_MUL_T0 =>
							-- Etat FSM
							etat_FSM <= "00001100";
						WHEN ETAT_MUL_T1 =>
							-- Etat FSM
							etat_FSM <= "00001101";
						WHEN ETAT_MUL_T2 =>
							-- Etat FSM
							etat_FSM <= "00001110";
							
						-------
						-- Done
						-------
						WHEN ETAT_DONE =>
							-- Done
							done <= '1';
							
							-- Etat FSM
							etat_FSM <= "00001111";
							
					END CASE;
				END IF;
		END PROCESS;
				
		-- fsm change
		PROCESS( clock )
			BEGIN
				-- Front montant de la clock
				IF rising_edge( clock ) THEN
					-- Passer à l'état suivant
					IF reset = '0' THEN
						-- Reset
						etat_actuel <= ETAT_IDLE;
					ELSE
						-- Passer à l'état futur
						etat_actuel <= etat_futur;
					END IF;
				END IF;
		END PROCESS;
END ARCHITECTURE;

