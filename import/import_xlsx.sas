proc import out=salesdata datafile="/home/u63740348/Sample-Sales-Data (3).xlsx" dbms=xlsx replace;
/*out: give the outputed dataset a name. 'salesdata' in this case*/
/*datafile: path of the file you want to import*/
/*dbms: file type*/
/*replace: import again and replace the existing dataset if it has already been created*/
sheet='Sheet1'; /*indicate the sheet you want to use in a multi-sheet Excel*/
getnames=YES; /*hader=true*/
mixed=YES; /*keep column as string if multiple times are inferred for the same column*/
run;