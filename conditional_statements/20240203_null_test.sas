data nulli;
input prod $1 q p;
datalines;
A 2 3
B . 5
A 2 3
C . 1
D 2 .
C 1 .
A . 4
D 5 .
;
run;

data mcnulli;
set nulli;
if missing(q) or missing(p) then incomplete=1;
else incomplete=0;
run;

data filtered_mcnulli;
set mcnulli;
if not incomplete;
run;

