 w=-5*pi:0.01:5*pi;
 syms t
 f = exp(-2*t-(j*w*t))
 integ=int(f,t, 0, inf)
 subplot(2,1,1);
 plot(abs(integ));
 grid on
 subplot(2,1,2);
 plot(angle(integ));
 grid on