data sample;
input name$1 points;
datalines;
X 20
A 10
C 5
D 6
;run;

proc sql;
	SELECT *
	FROM sample
	ORDER BY (
				CASE
					WHEN name = 'C' THEN 1
					WHEN name = 'X' THEN 2
					WHEN name = 'A' THEN 3
					ELSE 4
				END
	
			 ) ASC

;quit;

/* it smoothly works */