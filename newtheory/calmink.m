function [mink ] = calmink( x,mask,t )
%INTERPRETX Summary of this function goes here
%   Detailed explanation goes here
y=[-3; 0 ;0 ;0 ;0;0;-3;0;0;0];        
for i3=1:length(mask)
y(mask(i3))=x(i3);
end

v=exp(y(1));
m1=y(2);
rho=(exp(y(3))-1)/(exp(y(3))+1);
w=exp(y(4));
eta=exp(y(5));
j=y(6);
vp=exp(y(7));
mp=y(8);
rhop=(exp(y(9))-1)/(exp(y(9))+1);
jp=y(10);




A3 =(2*j*t*exp(-eta*t))/(4*j^2*t^2*exp(-2*eta*t) + t^2*w^4*exp(-4*eta*t))^(1/2)
A4=-(4*j*t*exp(-eta*t)*(2*m1*t*exp(-eta*t) + rho*t*v^(1/2)*w*exp(-eta*t) - 1) + 2*rho*t^2*v^(1/2)*w^3*exp(-3*eta*t))/(2*(4*j^2*t^2*exp(-2*eta*t) + t^2*w^4*exp(-4*eta*t)));
A5=((2*m1*t*exp(-eta*t) + rho*t*v^(1/2)*w*exp(-eta*t) - 1)^2 + t^2*v*w^2*exp(-2*eta*t))/(4*j^2*t^2*exp(-2*eta*t) + t^2*w^4*exp(-4*eta*t)) - (4*j*t*exp(-eta*t)*(2*m1*t*exp(-eta*t) + rho*t*v^(1/2)*w*exp(-eta*t) - 1) + 2*rho*t^2*v^(1/2)*w^3*exp(-3*eta*t))^2/(4*(4*j^2*t^2*exp(-2*eta*t) + t^2*w^4*exp(-4*eta*t))^2);


    mink= A4+ A3*(-A5*(A3^2 - 1))^(1/2)/(A3^2 - 1);


mink=exp(mink)*100
end

