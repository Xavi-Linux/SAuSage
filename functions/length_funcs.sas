data test;
one = 'ABC  '; /*trailing blanks*/
two = ' '; /*missing value*/
three = 'ABC   XYZ';
length_one = length(one);
lengthn_one = lengthn(one);
lengthc_one = lengthc(one);

length_two = length(two);
lengthn_two = lengthn(two);
lengthc_two = lengthc(two);

length_three = length(three);
lengthn_three = lengthn(three);
lengthc_three = lengthc(three);

run;

/* LENGTH

	- It does not take into account trailing blank characters
	- It returns 1 for missing values
*/

/* LENGTHN

	- It returns 0 for missing values; else, it works as LENGTH
*/

/* LENGTHC

	- It takes into account trailing blank characters

*/