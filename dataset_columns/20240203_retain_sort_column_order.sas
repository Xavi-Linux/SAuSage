data rtn;
input age name$;
datalines;
20 rere
21 dede
45 sese
;run;

/*Switch columns*/

data rtnn;
retain name age; /*Always included between data and set instructions*/
set rtn;
run;


/*Only sorting a subset of columns*/
data rtn_2;
input age name$ skill$ good;
datalines;
20 rere AK 1
21 dede TF 0
45 sese SK 1
;run;

/*Switch columns 1 and 2, and keep the original order for the remainder*/

data rtnn_2;
retain name age;
set rtn_2;
run;
