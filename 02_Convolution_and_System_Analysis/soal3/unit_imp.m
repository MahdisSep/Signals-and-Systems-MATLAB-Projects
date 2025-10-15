function [s]=unit_imp(n)
s=zeros(size(n));
s(n==0)=1;
end