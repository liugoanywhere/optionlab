function [ S ] = ema( Y,alpha )
%EMA Summary of this function goes here
%   Detailed explanation goes here
N=length(Y);
S(1)=Y(1);
for i=2:N
S(i)=Y(i)*alpha+(1-alpha)*S(i-1);
end

end

