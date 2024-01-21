data cles;
input a b c;
val = coalesce(a, b, c);
datalines;
1 . 2
. 2 3
. . 4
;
run;