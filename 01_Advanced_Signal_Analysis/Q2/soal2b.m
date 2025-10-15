t=-10:0.01:10;
 f=t.*exp((j*2*pi*t)/4);
syms t
deriv=diff(f);
subplot(2,1,1);
plot(abs(deriv));
grid on
subplot(2,1,2);
plot(angle(deriv));
grid on