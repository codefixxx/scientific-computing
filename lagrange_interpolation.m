x=[1 2 3 5];
y=[2 4 6 8];
n=length(x);
%find value at x=2.2
p=2.2;
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