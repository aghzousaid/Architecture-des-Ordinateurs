LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


ENTITY dlatchnbit IS
	generic (n	: integer);
	port (d	: in std_logic_vector(n-1 downto 0);
			en, n_reset, clk	: in bit;
			q	: out std_logic_vector(n-1 downto 0)
	);
END;

ARCHITECTURE dlatchnbit_bhv OF dlatchnbit IS

	COMPONENT dlatch1bit
		port (d	: in std_logic;
				en, n_reset, clk	: in bit;
				q	: out std_logic
		);
	END COMPONENT;

BEGIN
	gen : FOR i IN 0 TO n-1 GENERATE
		dlati : dlatch1bit PORT MAP (d(i), en, n_reset, clk, q(i));
	END GENERATE;

END ARCHITECTURE;