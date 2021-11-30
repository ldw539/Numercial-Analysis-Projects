function root1 = Newton1(x0,tolerance)
x = x0 - lratio(30,x0);
while abs(x-x0) > tolerance
    x0 = x;
    x = x0 - lratio(30,x0);
end
x1 = x;
root1 = x1;
end
