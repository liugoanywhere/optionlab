function [ obj ] = kalmaninit(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%newtheoryi( eta, t, m, w, rho, v, k )
%v,m,rho,w,eta
initialStateGuess=[-2; 0 ;0 ;0 ;0];
obj = unscentedKalmanFilter(@(x)x,@kalmanmeasurement,initialStateGuess);
obj.Alpha = 0.01;
end

