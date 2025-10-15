function[x]=soal3b(xf)
p=1/(2*pi);
syms t
syms omega
f=xf(omega)*exp(1i*omega*t);
integ1=int(f,omega,-1000,1000);
x=p*integ1;
end