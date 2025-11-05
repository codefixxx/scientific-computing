% A should be diagonal dominant
A = [4 1 2; 1 3 1; 0 1 2];
b = [4;5;6];
tol=1e-6;

x=zeros(size(b));
max_iter=1000;
for i=1:max_iter
    x_new=zeros(size(b));
    for j=1:length(b)
        x_new(j)=(b(j)-(A(j,[1:j-1 j+1:end])*x([1:j-1 j+1:end])))/A(j,j);
    end
    if max(abs(x-x_new))<tol
        fprintf('solution at iter =%d\n',i);
        break;
    end
    x=x_new;
end
result=x_new;
disp(result);
