
syms x t

y0 = 1;
x0 = 0;
f = @(x,y) x + y;
N = 5;
y = y0;
fprintf('Iteration 0: y = %s\n', char(y))

for k = 1:N
    y = y0 + int(f(t, subs(y, x, t)), t, x0, x);
    y = simplify(y);
    fprintf('Iteration %d: y = %s\n', k, char(y))
end
x_val = 0.4;
y_val = double(subs(y, x, x_val));

fprintf('\nApproximate value at x = %.2f is y = %.6f\n', x_val, y_val);