/*
	length is used to allocate a certain amount of bytes to each field in a dataset
*/

/*
	Writing the length statement right after the data statement allows changing the order of the columns
*/

/*
	Default number of bytes for a number: 8
*/
data weightagain;
length age 3 sex$6 bmi 8 children 3 smoker$3 region$15 charges 8; /*<-- watch out: the number of bytes for a string is written right after $*/
infile '/home/u63740348/insurance (1).csv' DSD MISSOVER firstobs=2;
/*DSD: remove quotation for strings*/
/*MISSOVER: identify empty values as nulls*/
/*firstobs=2 -> header=true*/
input age sex$ bmi children smoker region charges;
/*If a field is of string type, you need to add $ at the end of the variable name*/
run;
