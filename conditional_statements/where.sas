data where_set;
input team$ goals points;
datalines;
WHam 45 52
Fulham 38 45
Brentford 18 13
run;

/*Use case 1: SQL*/
proc sql;
SELECT *
FROM where_set
WHERE goals > 30;

/*Use case 2: as a dataset's parameter*/
proc print data=where_set(where=(goals > 30)); run;

/*Use case 3: as a separate statement within procs*/
proc print data=where_set;
where goals > 30;
run;