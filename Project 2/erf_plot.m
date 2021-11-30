n=300;
y=zeros(1,n+1);erf1=zeros(1,n+1);g=zeros(1,n+1);A=zeros(1,n+1);
for i=0:1:300
    y(i+1)=i/100;
    erf1(i+1)=erf(i/100);
    for k=0:99   %利用复合辛普森法则
g(i+1)=(2/(pi^(1/2)))*(i/600)*(exp(-((k)*(i/100)/100)^2)+4*exp(-((k+1/2)*(i/100)/100)^2)+exp(-((k+1)*(i/100)/100)^2));
    end
    A(i+1)=g(i+1)-erf(i+1);
end
plot(y,A)
