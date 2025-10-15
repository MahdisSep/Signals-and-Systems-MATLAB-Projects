function [y]=convolution(x,h)
n = length(x);
m = length(h);
s = n + m -1;
y = zeros(1,s);
for i = 1:n
      for k = 1:m
       y(i+k-1) = y(i+k-1) + h(k)*x(i);
      end
end
end
