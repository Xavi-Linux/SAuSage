data s1;
input name$ sales_1-sales_4;
datalines;
A 10 12 15 17
B 8  19 12 21
C 6  5  13 2
D 66 4  33 8
;
run;

data s2;
input names$ sales_1-sales_4; /*Watch out: names != name*/
datalines;
E 11 12 15 17
F 8  21 12 21
G 6  5  31 2
H 66 4  33 41
;
run;

/* stack vertically */
data mergedset2;
set s1 s2(rename=names=name); /*rename column so that attributes in both sets match*/
run;
