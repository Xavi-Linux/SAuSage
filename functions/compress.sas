/*Remove specific characters and leading, trailing and inbetween blanks*/
data comp;
input phone$1-15;
phone1 = compress(phone); /*Default: remove whitespaces*/
phone2 = compress(phone, '(-)', 's'); /*
	remove: '(', '-', ')'
	s: remove whitespaces as well. (default behaviour)
*/
datalines;
(314)456-4768
(314) 453-56 78
;
run;