LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity accumulateur is
	GENERIC( N : INTEGER := 16 );
		PORT (Ain : IN STD_LOGIC;
				Gin : IN STD_LOGIC;
				cod_op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				entree : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
				Gout : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
				clock : IN STD_LOGIC
		);
end entity;

architecture accumulateur_bhv of accumulateur is
	COMPONENT alu
		GENERIC (Na : INTEGER);
		PORT ( 	
			A,B: IN STD_LOGIC_VECTOR(Na-1 DOWNTO 0);
			sel: in std_logic_vector(2 downto 0);
			q: OUT STD_LOGIC_VECTOR(Na-1 DOWNTO 0);
			overflow: OUT STD_LOGIC
		);
	END COMPONENT;
	
	component registernbit 
		generic (Nr : INTEGER);
		port( Rin	:	IN STD_LOGIC_VECTOR(Nr-1 DOWNTO 0);
				Rout	:	OUT STD_LOGIC_VECTOR (Nr-1	DOWNTO 0);
				setR, clk, reset_n	:	in STD_LOGIC
		);
	end component;
	
	signal Aout, G_in, B_int : std_logic_vector(N-1 downto 0);
	signal rst_int, ovf_int : std_logic;
	
begin

REG_A : registernbit generic map (16) port map(entree, Aout, Ain, clock, rst_int);
INST_ADD : alu generic map (16) port map(Aout, B_int , cod_op, G_in, ovf_int);
REG_G : registernbit generic map (16) port map(G_in, B_int, Gin, clock, rst_int);

Gout <= B_int;

end architecture;
