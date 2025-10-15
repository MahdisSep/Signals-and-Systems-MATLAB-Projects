 n=-10:10;
 answer=unit_step(n);
 figure,stem(n,answer);

 m=0:10;
 answer2=unit_imp(m);
 figure,stem(m,answer2);

t=0:10;
s=zeros(size(t));
for i=1:11

      if(rem(t(i),2)==0)
          s(i)=2;
      end
       
      if(t(i)>=7)
          s(i)=1;
      end
end


t2=0:20;
figure,stem(t,s);

convolve=conv(answer2,s);
figure,stem(t2,convolve)
xlim([0 10])
