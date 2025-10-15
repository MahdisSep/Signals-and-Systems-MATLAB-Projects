array1=[1;2;3];
array2=[1 1 1];
ans1=convolution(array1,array2);
figure,stem(ans1);
ans2=conv(array1,array2);
figure,stem(ans2);