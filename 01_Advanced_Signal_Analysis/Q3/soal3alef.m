 t=-1:0.01:1;
 x=t;
 x(t<=0 & t>=-1)=0;
 m=3;
 yy=repmat(x,1,m);
 tt= -1: .01: ((numel(yy)-1)*.01) - 1;
 plot(tt,yy);