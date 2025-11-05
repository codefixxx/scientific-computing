
function intervals=IVT(a,b,h,f)
x=a:h:b;
arr=[];
for i=1:length(x)-1
    if f(x(i)) == 0
        arr = [arr; x(i), x(i)];
    elseif f(x(i)) * f(x(i+1)) < 0
        arr = [arr; x(i), x(i+1)];
    end
end
intervals=arr;
end






