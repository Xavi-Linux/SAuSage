/*
	Variables' attributes you can modify:
	
		1. Length
		2. Label
		3. Format
		4. Informat
		
*/

/* Modify the a variable's length */

data lengthy;
	attrib id length=$6; /*Always between data and set statements*/
	input id$3.;
	id = 'ID-' || id;
	datalines;
001
002
003
004
	;
run;