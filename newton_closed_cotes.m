
f = @(x) exp(x); a=0; b=1; n=4; h=(b-a)/n;

% Trapezoidal rule
x = a:h:b;
I = (h/2)*(f(a)+f(b)+2*sum(f(x(2:end-1))));
fprintf('Trap = %g\n', I);

% Simpson's 1/3 rule
x = a:h:b;
I = (h/3)*(f(a)+f(b) + 4*sum(f(x(2:2:end))) + 2*sum(f(x(3:2:end-1))));
fprintf('Simpson 1/3 = %g\n', I);

% Simpson's 3/8 rule
n=9;
h=(b-a)/n;
x=a:h:b;
sum1=0;
sum2=0;
for i=2:n
    if mod(i-1,3)==0
        sum1 = sum1 + f(x(i));
    else
        sum2 = sum2 + f(x(i));
    end
end
I=(3*h/8)*(f(a)+f(b)+2*sum1+3*sum2);
fprintf('simpson 3/8 = %g\n',I)

%boole's
n=4;
h=(b-a)/n;
x = a:h:b;
I = (2*h/45)*(7*f(x(1))+32*f(x(2))+12*f(x(3))+32*f(x(4))+7*f(x(5)));
fprintf('Boole = %g\n', I);

%weddle's
