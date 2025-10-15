function [u]=unit_step(n)
u=zeros(size(n));
u(n>=0)=1;
end