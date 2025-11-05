% A should be diagonal dominant
A = [4 1 2; 1 3 1; 0 1 2];
b = [4;5;6];
tol=1e-8;
x = zeros(3,1);
for k=1:1000
    xold = x;
    for i=1:3
        x(i) = (b(i) - (A(i,:)*x) + A(i,i)*x(i))/A(i,i);
    end
    if max(abs(x-xold))<tol
        fprintf('solution at iter =%d\n',i);
        break;
    end
end
disp("Solution:")
disp(x)
