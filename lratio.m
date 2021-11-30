function r=lratio(n,x)
p0=1; p0s=0; p1=x; p1s=1; 
for k = 1:n-1
    p2 = (2*k+1)*x*p1/(k+1) - k*p0/(k+1);
    p2s = (2*k+1)*p1/(k+1) + (2*k+1)*x*p1s/(k+1) - k*p0s/(k+1);
    p0 = p1; p1 = p2;
    p0s = p1s; p1s = p2s;
    
    maxx = abs(p2)+abs(p2s);
    if maxx>1e20
        d=1e-20;
    elseif maxx<1e-20
        d=1e20;
    else
        d = 1;
    end
    p1=p1*d; p2=p2*d; p1s=p1s*d; p2s=p2s*d;
end
r=p2/p2s;
end