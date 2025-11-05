%RK4
f = @(x,y) x + y; x=0; y=1; h=0.1; xn=0.4;
for i=1:round((xn-x)/h)
    k1 = h*f(x,y);
    k2 = h*f(x+h/2, y+k1/2);
    k3 = h*f(x+h/2, y+k2/2);
    k4 = h*f(x+h, y+k3);
    y = y + (k1+2*k2+2*k3+k4)/6;
    x = x + h;
end
fprintf('RK4 y(%g)=%g\n', x, y);

