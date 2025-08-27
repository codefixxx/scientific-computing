f=@(x) x.^3 - 4*x + 1;
max_iter=50;
true_value=-2.114907541476756;
tol=1e-12;
xsc=zeros(max_iter,1);
xsc(1)=-2.2;
xsc(2)=-2.1;
for k=3:max_iter
    xsc(k)=xsc(k-1)-(xsc(k-1)-xsc(k-2))*f(xsc(k-1))/(f(xsc(k-1))-f(xsc(k-2)));
    if abs(f(xsc(k)))<tol
        break;
    end
end
xsc=xsc(1:k);
esc=abs(xsc-true_value)
for i=3:length(erf)
    p=log(esc(i)/esc(i-1))/log(esc(i-1)/esc(i-2))
end


