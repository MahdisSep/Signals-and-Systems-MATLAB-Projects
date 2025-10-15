array1=[1;5;15;2;25;17;18];
array2=[6 5 4 3 1];
anss=array_conv(array1,array2);
figure,stem(anss);
con=conv(array1,array2)
figure,stem(con);