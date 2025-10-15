function h=soal2a(s,T,N)
syms x
integ1=int(s,-T/2,T/2);
A0=(1/T)*integ1;
A0
An=zeros(1,N);
for n=1:N
    f2=s.*cos((n*2*pi*x)/T);
    integ2=int(f2,-T/2,T/2);
    An(n)=(2/T)*integ2;
end
An
Bn=zeros(1,N);
for n=1:N
f3=s.*sin((n*2*pi*x)/T);
integ3=int(f3,-T/2,T/2);
Bn(n)=(2/T)*integ3;
end
Bn
sum=0;
for i=1:N
sum=An(i)*cos((i*2*pi*x)/T)+Bn(i)*sin((i*2*pi*x)/T)+sum;
end
h=A0+sum;

end