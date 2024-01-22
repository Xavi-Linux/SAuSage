data contracts;
input adt$ date date11. value phase$ fecha_entrada date11. manager$;
datalines;
001 15 Jan 2024 12 PH1 25 Dec 2023 xms
001 28 Dec 2023 12 PH1 25 Dec 2023 .
002 11 Jan 2024  5 PH2 11 Jan 2024 .
002 12 Jan 2024  5 PH1 11 Jan 2024 xms
003 10 Dec 2023  8 PH1 10 Dec 2023 xms
004 12 Nov 2023 15 PH2 23 Oct 2023 tts
004 25 Oct 2023 15 PH1 23 Oct 2023 .
005 16 Jun 2023 20 PH1 15 Jun 2023 xms
005 17 Aug 2023 20 PH2 15 Jun 2023 .
005 15 Nov 2023 20 PH2 15 Jun 2023 .
005 10 Jan 2024 20 PH3 15 Jun 2023 .
;run;

proc sql;
	SELECT *
	FROM contracts
	WHERE manager IS NOT NULL
;quit;

proc sql;
	SELECT *
	FROM contracts
	WHERE manager IS NOT MISSING
;quit;

proc sql;
	SELECT *
	FROM contracts
	WHERE (manager='xms') ^= 1 /*equivalent (manager='xms') IS NOT TRUE --> other values + nulls*/
;quit;

proc sql;
	SELECT *
	FROM contracts
	WHERE manager^='xms' /*Watch out! This is statement will not filter nulls out (unlike other SQLs)*/
;quit;