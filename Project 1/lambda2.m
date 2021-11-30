function y = lambda2(x,n)
fun1 = 0;
for i = 0:n
num = 1;
den = 1;
for j = 0:n
if i == j
continue
end
num = num.*(x-cos(j*pi/n));
den = den*(cos(i*pi/n) - cos(j*pi/n));
end
value = abs(num./den);
fun1 = fun1 + value;
end
y = fun1;
end