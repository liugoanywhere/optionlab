function [ obj ] = kalmaninit(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%newtheoryi( eta, t, m, w, rho, v, k )
%v,m,rho,w,eta
initialStateGuess=[0; 0 ;0 ;0 ;0];
obj = unscentedKalmanFilter(@(x)x,@(x)vdpMeasurementFcn1(x),initialStateGuess);
end

function [ logiv ] = vdpMeasurementFcn1( x )
for i=1:21
    for j=1:3
        k=0.8+0.02*(i-1);
        t=j/12;
v=exp(x(1));
m=x(2);
rho=(exp(x(3))-1)/(exp(x(3))+1);
w=exp(x(4));
eta=exp(x(5));
logiv(j+(i-1)*3)=log(newtheoryi( eta, t, m, w, rho, v, k ));
end
end
end