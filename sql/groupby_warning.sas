data products;
input name$ cat$ subcat$ Q p;
datalines;
A C-1 SC-1 5 7
B C-1 SC-2 6 12
C C-2 SC-1 10 15
D C-2 SC-1 7 8
E C-2 SC-2 4 5
F C-3 SC-3 2 4
G C-3 SC-4 10 5
H C-4 SC-5 12 6
I C-4 SC-1 23 10
J C-5 SC-1 13 4
;
run;

/*SQL-Compliant query: projected fields must either be in GROUP BY clause or be passed as parameter to a reducing
	function (SUM, MAX, MIN, etc.)
*/
proc sql;
	SELECT
		p.cat AS category,
		SUM (p.Q * p.p) AS total
	FROM work.products p
	GROUP BY
		p.cat
	ORDER BY
		p.cat ASC;
run;

/*Non-compliant query: some projected fields are neither part of the GROUP BY clause nor an argument in 
	an aggregating function. However, the execution does not fall through.
	
*/
proc sql;

	SELECT
		p.cat AS category,
		p.subcat,
		p.Q,
		p.p
	FROM work.products p
	GROUP BY
		p.p;

run;

/* !! IMPORTANT:
	If you specify a GROUP BY clause in a query that does not contain a summary function, then your clause is transformed
	into an ORDER BY clause and a message to that effect is written to the SAS log. 
*/