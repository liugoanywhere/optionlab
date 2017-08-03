function [ CorrectedState,CorrectedStateCovariance ] = kalman( obj,x,k,t )
%KALMAN Summary of this function goes here
%   Detailed explanation goes here
[CorrectedState,CorrectedStateCovariance] = correct(obj,x,k,t);

end

