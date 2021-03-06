function [ y,delta,gamma,vega ] = bscall( s,k,sigma,t,r )
%BSCALL Summary of this function goes here
%   Detailed explanation goes here
if t<=0
    y=max(0,s-k);
    return;
end
d1=1./sigma./(t).^0.5.*(log(s./k)+(r+sigma.^2./2).*t);
d2=d1-sigma.*t.^0.5;
y=s*normcdf(d1)-normcdf(d2).*k.*exp(-r.*t);
delta=normcdf(d1);
gamma=normpdf(d1)./s./sigma./t.^0.5;
vega=s.*normpdf(d1).*t.^0.5;

end

