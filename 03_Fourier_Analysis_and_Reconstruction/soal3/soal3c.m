syms t
f2=rectangularPulse(0.5*t);
% fplot(f)


syms t
syms omega
f=f2*exp(-1*1i*omega*t);
integ1=int(f,t,-100000, 100000);
answer=integ1;

p=1/(2*pi);
syms t
syms omega
f3=answer*exp(1i*omega*t);
integ1=int(f3,omega,-100000,100000);
x=p*integ1;

figure,fplot(x);