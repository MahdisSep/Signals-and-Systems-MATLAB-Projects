function [answer]=array_conv(array1,array2)
array3=array1*array2;
m=length(array1);
n=length(array2);
radif=1;
soton=1;
x=m+n-1;
arrayans=zeros(1,x);
for i=1:1:m+n-1
    soton=i;
    if i>n
        soton=n;
        radif=1+i-n;
    end
    for j=radif:1:m
       if soton>=1
         arrayans(i)=array3(j,soton)+arrayans(i);
         soton=soton-1;
        end
     end
    
end
answer=arrayans;
end