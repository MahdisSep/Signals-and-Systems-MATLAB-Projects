clc
s=[0,0,1];
% a=[sin((2*pi)/5),sin((2*pi*2)/5),sin((2*pi*3)/5),sin((2*pi*4)/5),sin((2*pi*5)/5)]
answerak=soal1a(s)
x=soal1b(answerak);
y=repmat(x,1,4);
figure,stem(y);
% figure,stem(y2);