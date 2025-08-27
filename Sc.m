function root=Sc(x0,x1,f,tol)
    if x1==x0
        root=x1;
        return;
    end
    x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0));
    if abs(f(x2))<tol
        root=x2;
        return
    end
    while abs(f(x2))>tol
        x0=x1;
        x1=x2;
        x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0));
        if abs(f(x2))<tol
            root = x2;
            return;
        end
    end
end

