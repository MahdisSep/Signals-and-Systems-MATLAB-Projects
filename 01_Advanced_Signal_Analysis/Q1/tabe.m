function[answer]=tabe(Op,a,n)
if(Op=="shift")
    answer=sin(n-a)
end
if(Op=="scale")
     answer=sin(a.*n)
end
end

