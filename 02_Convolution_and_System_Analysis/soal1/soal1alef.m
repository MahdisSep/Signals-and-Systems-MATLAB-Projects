m=3;
n=5;
array1=[1;2;3];
array2=[4 5 6 7 8];
convolove=conv(array1,array2);
figure,stem(convolove);

array3=[1;2;1;2];
array4=[1 1 0 3 4 5];
convolove2=conv(array3,array4);
figure,stem(convolove2);

array5=[1;1];
array6=[2 3 4];
convolove3=conv(array5,array6);
figure,stem(convolove3);