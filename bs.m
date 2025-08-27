
function root=bs(a,b,f,tol)
    c=(a+b)/2;
    if abs(f(c))<tol
        root=c;
        return
    else
        while abs(f(c))>tol
            if f(a)*f(c)<0
                b=c;
            elseif f(a)*f(c)==0
                retrun c;
            else 
                a=c;
            end
            c=(a+b)/2;
        end
        root =c;
    end



    