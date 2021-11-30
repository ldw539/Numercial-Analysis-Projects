function Rroots = Newton2(x0,tolerance)
xi=[Newton1(x0,tolerance)];
for k = 2:30
    r = lratio(30,x0);
    s = sum(1./ (x0- xi(1:k-1)));
    x1 = x0 - r/(1-r*s);
    while abs(x1-x0) > tolerance
        x0 = x1;
        r = lratio(30,x0);
        s = sum(1./ (x0- xi(1:k-1)));
        x1 = x0 - r/(1-r*s);
    end
    xi(k) = x1;
    x0 = 1;
end
Rroots = xi;
end