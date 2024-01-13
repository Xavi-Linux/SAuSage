data weightagain;
infile '/home/u63740348/weightgain (2).csv' DSD MISSOVER firstobs=2;
/*DSD: remove quotation for strings*/
/*MISSOVER: identify empty values as nulls*/
/*firstobs=2 -> header=true*/
input id source$ type$ weightg;
/*If a field is of string type, you need to add $ at the end of the variable name*/
run;
