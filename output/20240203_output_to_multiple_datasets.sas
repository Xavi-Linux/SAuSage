data npt;
input num;
datalines;
1
2
3
4
5
6
7
8
9
10
;run;

/*split input to two datasets*/

data even odd;
set npt;
if mod(num, 2) = 0 then output even;
else output odd;
run;