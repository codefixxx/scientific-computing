function root=Nr(a,b,f,f_diff,tol)
x=(a+b)/2;
if abs(f(x))<tol
    root=x;
    return;
end
while abs(f(x))>tol
    if f_diff(x)==0
        fprintf('f_diff(x) is 0 at',x);
        return;
    end
    x=x-f(x)/f_diff(x);

    if(abs(f(x))<tol)
        root=x;
        return;
    end
end
end



