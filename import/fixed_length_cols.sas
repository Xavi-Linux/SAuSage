data beers;
input name$ 1-9 country$ 10-12 price 13-15;
/*When values for each column have a fixed length, you can split them into columns using an index range
for each column*/
datalines;
Guinness IRE9.5
Corona   MEX7.5
HoegardenNED3.5
Heineken NED4.0
;
run;