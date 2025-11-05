% Euler's Method
f = @(x,y) x + y;
x=0; y=1;
h=0.1;
xn=0.4;
for i=1:round((xn-x)/h)
    y = y + h*f(x,y);
    x = x + h;
end
fprintf('Euler y(%g)=%g\n', x, y);
