data test;
input x y;
total=x+y;
if _error_ = 1 then /* error only takes either 0 or 1 */
put "** Error in row " _n_ " **";
datalines;
1 1
2 3
3 n
4 4
;
run;