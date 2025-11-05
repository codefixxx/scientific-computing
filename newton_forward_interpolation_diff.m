xv = 0:3;
yv = [1 8 27 64];

n = length(xv);
h = xv(2)-xv(1);
dif = zeros(n);
dif(:,1)=yv';
for j=2:n
    for i=1:(n-j+1)
        dif(i,j)=dif(i+1,j-1)-dif(i,j-1);
    end
end
syms x
p = (x-xv(1))/h;
s = dif(1,1);
fact = 1;
for k=1:n-1
    fact = fact*k;
    term = 1;
    for m=0:k-1
        term = term*(p-m);
    end
    s = s + term*dif(1,k+1)/fact;
end
disp(s);
disp(double(subs(s,x,63)))
d1y=diff(s,x)
d2y=diff(d1y,x)
firstDerivativeValue = double(subs(d1y, x, 63))
secondDerivativeValue = double(subs(d2y, x, 63))
