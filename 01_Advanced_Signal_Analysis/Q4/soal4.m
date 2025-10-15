t=-3:3;
x=zeros(size(t));
y=zeros(size(t));
% zoj
for i=1:7
if(t(i)==3 || t(i)==-3)
    x(i)=-0.5;
end
if(t(i)==-2 || t(i)==2)
    x(i)=-1;
end
if(t(i)==-1 || t(i)==1)
    x(i)=0.5;
end
if(t(i)==0)
    x(i)=2;
end
end

for i=1:7
    if(t(i)==-3)
        y(i)=-1.5;
    end
    if(t(i)==-1)
        y(i)=-0.5;
    end
    if(t(i)==1)
        y(i)=0.5;
    end
    if(t(i)==3)
        y(i)=1.5;
    end
end

figure,stem(t,x)
hold on
stem(t,y)
hold off