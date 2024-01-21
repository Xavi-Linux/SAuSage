data six;
infile '/home/u63740348/6var (2).txt';
input var_1-var_6;
run;

data recordarray;
set six;
array sixarray(6) var_1-var_6; /*Declare array --> array array_name(length) values*/
do i=1 to 6; /*The loop is executed once for each row in the data set*/
if sixarray(i) < 40 then sixarray(i)=.;
end;
run;

proc print data=recordarray;
var var_1-var_6; /*Print certain columns*/
run;

data arraytest;
set six;
array ovar(6) var_1-var_6;
array ntax(6) tax_1-tax_6;
do i = 1 to 6;
	ntax(i) = ovar(i) * (1 + 0.05);
end;
run;

proc print data=arraytest;
run;

/*
	 Example 1: Defining Arrays

    array rain {5} janr febr marr aprr mayr;

    array days{7} d1-d7;

    array month{*} jan feb jul oct nov; <------- Unspecified length Example 1: Defining Arrays

    array rain {5} janr febr marr aprr mayr;

    array days{7} d1-d7;

    array month{*} jan feb jul oct nov;

    array x{*} _NUMERIC_;

    array qbx{10};

    array meal{3};


Example 2: Assigning Initial Numeric Values

    array test{4} t1 t2 t3 t4 (90 80 70 70);

    array test{4} t1-t4 (90 80 2*70);

    array test{4} _TEMPORARY_ (90 80 70 70);


Example 3: Defining Initial Character Values

    array test2{*} $ a1 a2 a3 ('a','b','c');


Example 4: Defining More Advanced Arrays

    array new{2:5} green jacobs denato fetzer;

    array x{5,3} score1-score15;

    array test{3:4,3:7} test1-test10;

    array temp{0:999} _TEMPORARY_;

    array x{10} (2*1:5);

    array x{*} _NUMERIC_;

    array qbx{10};

    array meal{3};


Example 2: Assigning Initial Numeric Values

    array test{4} t1 t2 t3 t4 (90 80 70 70);

    array test{4} t1-t4 (90 80 2*70);

    array test{4} _TEMPORARY_ (90 80 70 70);


Example 3: Defining Initial Character Values

    array test2{*} $ a1 a2 a3 ('a','b','c');


Example 4: Defining More Advanced Arrays

    array new{2:5} green jacobs denato fetzer; <--------- starting with index 2 instead of 1

    array x{5,3} score1-score15; <------------------------ Two dimensions

    array test{3:4,3:7} test1-test10;

    array temp{0:999} _TEMPORARY_;

    array x{10} (2*1:5);




*/