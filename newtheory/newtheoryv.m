function [ V0 ] = newtheoryv( eta, t, w,  mp, rhop, vp, k )
%NEWTHEORYV Summary of this function goes here
%   Detailed explanation goes here
A=1/4*exp(-2*eta*t)*w^2*t^2
B=1-2*exp(-eta*t)*mp*t-exp(-eta*t)*w*rhop*vp^0.5*t
C=-(vp+2*exp(-eta*t)*w*rhop*vp^0.5*k+exp(-2*eta*t)*w^2*k^2)
V0=((-B+(B^2-4*A*C)^0.5)/(2*A))^0.5
end

