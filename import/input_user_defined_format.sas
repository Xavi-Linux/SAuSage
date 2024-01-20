data products;
input code$;
datalines;
A
B
C
D
E
F
;
run;

proc print data=products; run;

/*Set a value mapping*/
proc format;
value $definition
'A' = 'Product A'
'B' = 'Product B'
'C' = 'Product C'
'D','E' = 'Unknown' /**/
OTHER = 'New' /*Fallback value*/
;
run;

/*Print the mapping instead of the original value*/

proc print data=products;
format code$definition.;
run;
 
data niceprods;
set products;
proddesc = put(code, $definition.); /*--> put: get a string variable and change its format*/
run;

proc print data=niceprods;
run;