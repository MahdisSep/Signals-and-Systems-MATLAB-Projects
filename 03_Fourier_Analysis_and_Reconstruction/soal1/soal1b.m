function[y]=soal1b(ak)
y=zeros(1,length(ak));
omega=2*pi/length(ak);
for n=1:length(ak)
    b=0;
    for k=1:length(ak)
    a=exp(1i*k*omega*n);
    b=ak(k)*a+b;
    
    end

    y(n)=b;

end
end