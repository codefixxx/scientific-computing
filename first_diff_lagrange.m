x=[1 2 3 5];
y=[2 4 6 8];
n=length(x);
%find value at x=2.2
syms p
yp=0;
for i=1:n
    L=1;
    for j=1:n
        if j~=i
            L=L*(p-x(j))/(x(i)-x(j));
        end
    end
    yp=yp+L*y(i);
end
disp(yp);
d1yp=diff(yp,p);
d2yp=diff(d1yp,p);
% Evaluate the first and second derivatives at a specific point
point = 2.2;
firstDerivativeValue = double(subs(d1yp, p, point))
secondDerivativeValue = double(subs(d2yp, p, point))




