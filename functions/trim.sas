data concat;
input lastname$ firstname$ age;
name = trim(lastname) || ', '|| firstname; /*remove: trailing default whitespaces*/
datalines;
MS X 32
TT F 29
BN P 44
;
run;