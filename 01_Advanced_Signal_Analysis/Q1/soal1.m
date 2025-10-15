n=-2*pi:2*pi;
x=sin(n);
Op="shift";
a=(3*pi)/4;
answer_1=tabe(Op,a,n);
figure,stem(n,answer_1)
Op="scale";
 a=5;
 answer_2=tabe(Op,a,n);
 hold on
 stem(n,answer_2)
 hold off