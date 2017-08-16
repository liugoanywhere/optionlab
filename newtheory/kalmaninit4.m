function [ obj ] = kalmaninit4(initialStateGuess,mask,numk,numt,ifv,ndays  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%newtheoryi( eta, t, m, w, rho, v, k )
%v,m,rho,w,eta, vp,mp,rhop
%initialStateGuess=[-3; 0 ;0 ;0 ;0;0;-3;0;0;0];
obj = unscentedKalmanFilter(@(x)x,@( x,k,t )kalmanmeasurement4( x,k,t,mask,numk,numt,ifv,ndays ),initialStateGuess);
obj.Alpha = 0.1;
obj.Beta = 2;
obj.Kappa=0;
end
