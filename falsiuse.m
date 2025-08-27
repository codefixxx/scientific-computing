
f =  @(x) sin(x);
intervals=IVT(-5,5,0.1,f)
rows=size(intervals,1);
for i = 1:rows
    roots=falsi(intervals(i,1),intervals(i,2),f,1e-12)
end