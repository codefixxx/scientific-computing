syms x y
f=x+y;
fx=diff(f,x);
fy=diff(f,y);
f=matlabFunction(f);
fx = matlabFunction(fx,'Vars',[x y]);
fy = matlabFunction(fy,'Vars',[x y]);
x=0; y=1; h=0.1; xn=0.4;
for i=1:round((xn-x)/h)
    y = y + h*f(x,y) + (h^2/2)*(fx(x,y) + fy(x,y)*f(x,y));
    x = x + h;
end
fprintf('Taylor y(%g)=%g\n', x, y);
