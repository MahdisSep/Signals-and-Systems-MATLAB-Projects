function[answer]=soal1a(x)
answer=zeros(1,length(x));
omega=2*pi/length(x);
p=1/length(x);
for k=1:length(x)
    b=0;
    for i=1:length(x)
    a=exp(-1*1i*omega*i*k);
    b=x(i)*a+b;
    
    end

    answer(k)=p*b;

end
end