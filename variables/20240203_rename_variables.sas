data renvar;
input name $4. var;
rename var=age; /*rename variable when sending to the output dataset*/
age_2 = var + 10; /*it adds 10 to the original data*/
age_3 = age + 10; /*Watch out: it yields null.*/
datalines;
Xavi 32
Wtkr 23
;run;