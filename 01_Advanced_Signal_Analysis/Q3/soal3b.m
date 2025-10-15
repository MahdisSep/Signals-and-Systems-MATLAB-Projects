 t=-0.5:0.01:0.5;
 X=cos(pi.*t);
 m=3;
 yy=repmat(X,1,m);
 tt= -.5: .01: ((numel(yy)-1)*.01) - .5;
 plot(tt,yy);