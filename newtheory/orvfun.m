
function [F]=orvfun(K,s,t,x)
N=length(s);

F=0;
F=bsput(s(N),K,x,t(N),0)-bsput(s(1),K,x,t(1),0);
for i=2:N
   [ ~,delta,~,~]  = bsput(s(i-1),K,x,t(i-1),0);
F=F-delta*(s(i)-s(i-1));

end

end
