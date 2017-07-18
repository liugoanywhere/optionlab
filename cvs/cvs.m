function [ y ] = cvs( k,s,t )
%CVS Summary of this function goes here
%   Detailed explanation goes here
if k<1
    y=ptrm(k,s,t)*s^2/2*t
else
    y=(1-ptrm(k,s,t))*s^2/2*t
end

end

