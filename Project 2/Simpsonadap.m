function  int = Simpsonadap(a0,b0,tol0)
int=0; n=1; c{1}=[a0,b0];
while ~isempty(c)
   interval = c{1};
   c(1) = [];
   a = interval(1); b = interval(2);
   m = (b+a)/2;
   n = n+1;
   appab = Simpson(a,b); appam = Simpson(a,m); appmb = Simpson(m,b);
   error = abs(appab - appam - appmb);

   if error < 15*tol0*(b-a)/(b0-a0)
       int = int + appam + appmb;
   else
       c = [c,[a,m]];c = [c,[m,b]];
   end
end
end
