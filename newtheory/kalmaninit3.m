function [ obj ] = kalmaninit3(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%newtheoryi( eta, t, m, w, rho, v, k )
%v,m,rho,w,eta
initialStateGuess=[0; 0 ;0 ;0 ;0;0];
obj = unscentedKalmanFilter(@(x)x,@kalmanmeasurement3,initialStateGuess);
obj.Alpha = 0.01;
end

