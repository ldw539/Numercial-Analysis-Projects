function y = lambda1(x,n)
fun1 = 0;
for i = 0:n
num = 1;
den = 1;
for j = 0:n
if i == j
continue
end
num = num.*(x+1-2j/n);
den = den*(2*(i-j)/n);
end
value = abs(num./den);
fun1 = fun1 + value;
end
y = fun1;
end