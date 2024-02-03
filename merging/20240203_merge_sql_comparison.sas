data A;
input key value_1 $;
datalines;
1 A
2 B
3 C
4 D
5 E
;run;

data B;
input key value_2 $2.;
datalines;
1 SN
1 TS
2 DW
6 ST
7 MD
8 CB
;run;

/* Default = FULL OUTER JOIN */

data default;
merge A(in=A) B(in=B);
by key;
run;


/* INNER JOIN */

data inner;
merge A(in=A) B(in=B);
by key;
if A and B;
run;


/* LEFT JOIN*/

data left;
merge A(in=A) B(in=B);
by key;
if A;
run;

/* RIGHT JOIN */

data right;
merge A(in=A) B(in=B);
by key;
if B;
run;

/* EXCEPT: A - B */

data except_1;
merge A(in=A) B(in=B);
by key;
if A and not B;
run;


/* EXCEPT: B - A */

data except_2;
merge A(in=A) B(in=B);
by key;
if not A and B;
run;


/* (A EXCEPT B) UNION (B EXCEPT A) */
data union_of_differences;
merge A(in=A) B(in=B);
by key;
if not A or not B;
run;

