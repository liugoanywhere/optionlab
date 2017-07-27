function [ obj ] = kalmaninit2(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%newtheoryi( eta, t, m, w, rho, v, k )
%v,m,rho,w,eta, vp,mp,rhop
initialStateGuess=[0; 0 ;0 ;0 ;0;0;0;0];
obj = unscentedKalmanFilter(@(x)x,@(x)vdpMeasurementFcn1(x),initialStateGuess);
end

function [ logiv ] = vdpMeasurementFcn1( x )
for i=1:21
    for j=1:6
        k=0.8+0.02*(i-1);
        
        if j<=3
            t=j/12;
        else
            t=(j-3)/12;
        end
v=exp(x(1));
m=x(2);
rho=(exp(x(3))-1)/(exp(x(3))+1);
w=exp(x(4));
eta=exp(x(5));
vp=exp(x(6));
mp=x(7);
rhop=(exp(x(8))-1)/(exp(x(8))+1);
if j<=3
logiv(j+(i-1)*6)=log(newtheoryi( eta, t, m, w, rho, v, k ));
else
    logiv(j+(i-1)*6)=log( newtheoryv( eta, t, w,  mp, rhop, vp, k ));
end
end
end
end