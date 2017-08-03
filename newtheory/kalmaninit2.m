function [ obj ] = kalmaninit2(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%newtheoryi( eta, t, m, w, rho, v, k )
%v,m,rho,w,eta, vp,mp,rhop
initialStateGuess=[-2; 0 ;0 ;0 ;0;0;0;0];
obj = unscentedKalmanFilter(@(x)x,@kalmanmeasurement2,initialStateGuess);
end
