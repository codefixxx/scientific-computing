
f = @(x) x^3 - 5*x+1;
df = @(x) 3*x^2 - 5;


x0 = 2;
tol = 1e-12;
max_iter = 50;
true_root = fzero(f, x0);


x = zeros(max_iter,1);
x(1) = x0;

for k = 1:max_iter-1
    x(k+1) = x(k) - f(x(k))/df(x(k));
    if abs(f(x(k+1))) < tol
        break;
    end
end


x = x(1:k+1);


errors = abs(x - true_root);


fprintf('Iter   x_k                Error            Estimated p\n');
for i = 3:length(errors)
    e0 = errors(i-2);
    e1 = errors(i-1);
    e2 = errors(i);

    p = log(e2/e1) / log(e1/e0);
    fprintf('%3d   %.15f   %.3e     %.6f\n', i, x(i), e2, p);
end

fprintf('\nTrue root = %.15f\n', true_root);
