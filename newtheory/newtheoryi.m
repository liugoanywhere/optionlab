function [ I0 ] = newtheoryi( eta, t, m, w, rho, v, k )
%NEWTHEORYI Summary of this function goes here
%   Detailed explanation goes here
A=1/4*exp(-2*eta*t)*w^2*t^2;
B=(1-2*exp(-eta*t)*m*t-exp(-eta*t)*w*rho*v^0.5*t);
C=-(v+2*exp(-eta*t)*w*rho*v^0.4*k+exp(-2*eta*t)*w^2*k^2);
I0=((-B+(B^2-4*A*C)^0.5)/(2*A))^0.5;

end

