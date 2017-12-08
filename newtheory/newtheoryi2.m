function [ I0,Ik ] = newtheoryi2( eta, t, m1, w, rho, v, k ,j)
%NEWTHEORYI Summary of this function goes here
%   Detailed explanation goes here
m=m1+k*j;
A=1/4*exp(-2*eta*t)*w^2*t^2;
B=(1-2*exp(-eta*t)*m*t-exp(-eta*t)*w*rho*v^0.5*t);
C=-(v+2*exp(-eta*t)*w*rho*v^0.5*k+exp(-2*eta*t)*w^2*k^2);
I0=((-B+(B^2-4*A*C)^0.5)/(2*A))^0.5;
Ik=(2^(1/2)*exp(eta*t)*((2*t^2*w^3*exp(-4*eta*t)*(k*w + rho*v^(1/2)*exp(eta*t)) + 4*j*t*exp(-2*eta*t)*(2*m1*t - exp(eta*t) + 2*j*k*t + rho*t*v^(1/2)*w))/(2*(exp(-2*eta*t)*(2*m1*t - exp(eta*t) + 2*j*k*t + rho*t*v^(1/2)*w)^2 + t^2*w^2*exp(-2*eta*t)*(v + k^2*w^2*exp(-2*eta*t) + 2*k*rho*v^(1/2)*w*exp(-eta*t)))^(1/2)) + 2*j*t*exp(-eta*t)))/(2*t*w*((exp(-2*eta*t)*(2*m1*t - exp(eta*t) + 2*j*k*t + rho*t*v^(1/2)*w)^2 + t^2*w^2*exp(-2*eta*t)*(v + k^2*w^2*exp(-2*eta*t) + 2*k*rho*v^(1/2)*w*exp(-eta*t)))^(1/2) + 2*t*exp(-eta*t)*(m1 + j*k) + rho*t*v^(1/2)*w*exp(-eta*t) - 1)^(1/2));

    




end

