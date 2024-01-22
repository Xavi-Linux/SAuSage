data contracts;
input adt$ date date11. value phase$ fecha_entrada date11.;
datalines;
001 15 Jan 2024 12 PH1 25 Dec 2023
001 28 Dec 2023 12 PH1 25 Dec 2023
002 11 Jan 2024  5 PH2 11 Jan 2024
002 12 Jan 2024  5 PH1 11 Jan 2024
003 10 Dec 2023  8 PH1 10 Dec 2023
004 12 Nov 2023 15 PH2 23 Oct 2023
004 25 Oct 2023 15 PH1 23 Oct 2023
005 16 Jun 2023 20 PH1 15 Jun 2023
005 17 Aug 2023 20 PH2 15 Jun 2023
005 15 Nov 2023 20 PH2 15 Jun 2023
005 10 Jan 2024 20 PH3 15 Jun 2023
;run;

/* "Wrong" GROUP BY */
proc sql;
	SELECT
			adt,
			date FORMAT=ddmmyy.,
			MAX (date) FORMAT=ddmmyy. AS max_date,
			value,
			phase,
			fecha_entrada FORMAT=ddmmyy.
	FROM contracts
	WHERE phase = 'PH1'
	GROUP BY
		adt
	HAVING date = MAX(date)
;quit;

/* Right group by*/

proc sql;
	SELECT
			t1.adt,
			t1.date FORMAT=ddmmyy.,
			t2.max_date FORMAT=ddmmyy.,
			t1.value,
			t1.phase,
			t1.fecha_entrada FORMAT=ddmmyy.
	FROM
			(
				SELECT
						adt,
						date,
						value,
						phase,
						fecha_entrada
				FROM contracts
				WHERE phase = 'PH1'
			) t1
		INNER JOIN
			(
				SELECT
					adt,
					MAX (date) AS max_date
				FROM contracts
				WHERE phase = 'PH1'
				GROUP BY adt
			) t2
				ON t1.adt = t2.adt
			   AND t1.date = t2.max_date	
;quit;

/*Third way - right as well*/

proc sql;
		SELECT
			adt,
			date FORMAT=ddmmyy.,
			value,
			phase,
			fecha_entrada FORMAT=ddmmyy.
		FROM contracts con
		WHERE phase = 'PH1'
		  AND date IN (
		  				 SELECT MAX (date)
		  				 FROM contracts c
		  				 WHERE c.adt = con.adt
		  				   AND phase = 'PH1'
		  			  )
;quit;