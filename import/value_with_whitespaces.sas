data wspace;
length name$16;
input name & $; /* & --> values will contain whitespaces, do not break text into multiple columns*/
datalines;
X M S
R T D
;
run;