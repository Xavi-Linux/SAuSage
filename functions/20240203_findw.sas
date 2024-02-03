/*
	Returns the starting position of a word in a string. If no occurence is found, it yields 0.
*/

data sentences;
input s & $25.;
datalines;
I have a dog
Dodge the stray cat
Flowers and bees
Water is flowing
Sparkling water
I love spark
;run;

data fw;
set sentences;
has_dog=findw(s, 'dog');
has_d=findw(s, 'd'); /*Watch out: it yields nill since it looks for words, not substrings*/
has_flower=findw(s, 'flowers'); /*case sensitive search */
has_flower_i=findw(s, 'flowers', ' ', 'i', 0);
has_flow=findw(s, 'flowing');
has_spark=findw(s, 'spark', ' ', 'i');
run;