data nodupli;
input prod $ q p;
datalines;
A 2 3
B 3 5
A 2 3
C 1 1
D 2 2
C 1 2
A 2 4
D 5 3
;
run;

/*
	Remove duplicates by product and retrieve the first occurence
	if multiple records for the same product exist.
*/
proc sort data=nodupli out=nofruti nodupkey;
by prod;
run;

proc sort data=nodupli out=tutifruti nodupkey;
by prod q p;
run;

/*
	Descending order for the last grouping field instead of ascending (default)
*/

proc sort data=nodupli out=tutifruti nodupkey;
by prod q descending p;
run;


data countfruti(keep=count);
set nodupli;
count + 1;
run;