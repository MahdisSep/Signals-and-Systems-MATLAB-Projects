t=-15:0.01:15;
x=t;
x(t<-10 | t>10)=0;
x(t>5 & t<=10)=-x(t>5 & t<=10);
x(t>=-10 & t<-5)=-x(t>=-10 & t<-5);

figure,plot(t,x);

  array1d=[1 0 -1];
  answer=conv(x,array1d);
  figure,plot(answer);
