data concat;
input lastname$ firstname$ age;
name = lastname || ', '|| firstname; /*trailing blanks after the last name since it is of length 8 by default*/
datalines;
MS X 32
TT F 29
BN P 44
;
run;