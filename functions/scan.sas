/*
 SCAN: extract a chunk from a character-delimited string
*/

data scn;
separator = ', ';
first_name = '  larry';
last_name = 'larryson';
name = catx(separator, propcase(last_name), propcase(first_name));
scann = scan(name, 1);
drop separator;
run;