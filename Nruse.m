syms x
f_sym(x) = x.^3 - 4*x + 1;
f_diff_sym = diff(f_sym, x);

f      = matlabFunction(f_sym);
f_diff = matlabFunction(f_diff_sym)
intervals=IVT(-5,5,0.1,f)
rows=size(intervals,1);
for i = 1:rows
    roots=Nr(intervals(i,1),intervals(i,2),f,f_diff,1e-12)
end


