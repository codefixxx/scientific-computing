f=@(x) x.^3 - 4*x + 1;
a=-2.2;
b=-2.1;
max_iter=50;
true_value=-2.114907541476756;
tol=1e-12;
xrf=zeros(max_iter,1);
for k=1:max_iter
    xrf(k)=a-(b-a)*f(a)/(f(b)-f(a));
    if f(a)*f(xrf(k))<0
        b=xrf(k);
    elseif f(a)*f(xrf(k))==0
        break;
    else
        a=xrf(k);
    end
    if abs(f(xrf(k)))<tol
        break;
    end
end
xrf=xrf(1:k);
erf=abs(xrf-true_value);
for i=3:length(erf)
    p=log(erf(i)/erf(i-1))/log(erf(i-1)/erf(i-2))
end




        
