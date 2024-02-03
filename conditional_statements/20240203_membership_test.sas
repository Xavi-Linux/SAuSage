data memetest;
input prod $1 q p;
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

data mt(keep=prod good);
set memetest;
if prod in ('A', 'C') then good='Y';
else good='N';
run;

/* output the test result as an attribute straight away */
data asvar(keep=prod target);
set memetest;
target = prod in ('A', 'C');
run; 


