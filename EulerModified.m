% Euler's modified Method
f = @(x,y) x + y;
x=0; y=1;
h=0.1;
xn=0.4;
for i=1:round((xn-x)/h)
    yp=y+h*f(x,y);
    y=y+(h/2)*(f(x,y)+f(x+h,yp));
    x=x+h;
end
fprintf('ModEuler y(%g)=%g\n', x, y);
