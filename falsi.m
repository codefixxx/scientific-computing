
function root=falsi(a,b,f,tol)
    if a==b
        root=a;
        return;
    end
    c=a-(b-a)*f(a)/(f(b)-f(a));
    if abs(f(c))<tol || f(c)==0
        root=c;
        return
    else
        while abs(f(c))>tol
            if f(a)*f(c)<0
                b=c;
            elseif f(a)*f(c)==0
                root =c;
                return;
            else 
                a=c;
            end
            c=a-(b-a)*f(a)/(f(b)-f(a));
        end
        root =c;
    end