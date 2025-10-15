function[answer]=soal3a(x)
syms t
syms omega
f=x(t)*exp(-1*1i*omega*t);
integ1=int(f,t,-1000, 1000);
answer=integ1;
end