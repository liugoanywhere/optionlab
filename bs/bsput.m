function [ y,delta,gamma,vega ]  = bsput( s,k,sigma,t,r )
%BSPUT Summary of this function goes here
%   Detailed explanation goes here
d1=1/sigma/(t)^0.5*(log(s/k)+(r+sigma^2/2)*t);
d2=d1-sigma*t^0.5;
y=normcdf(-d2)*k*exp(-r*t)-normcdf(-d1)*s;
delta=normcdf(d1)-1;
gamma=normpdf(d1)/s/sigma/t^0.5;
vega=s*normpdf(d1)*t^0.5;
end

