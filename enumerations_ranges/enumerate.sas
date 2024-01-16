data studentscores;
input gender score;
datalines;
1 9
2 5
1 8
2 10
1 7
1 5
2 3
1 4
1 7
1 9
;
run;

proc sort data=studentscores;
by gender;
run;

data group;
set studentscores;
count + 1; /*<-- create a variable and add 1 at each row read from the dataset*/
by gender;
if first.gender then count=1; /*Everytime you find a new value for gender attribute, reset the counter */
run;