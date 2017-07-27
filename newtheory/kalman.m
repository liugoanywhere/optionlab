function [ CorrectedState,CorrectedStateCovariance ] = kalman( obj,x )
%KALMAN Summary of this function goes here
%   Detailed explanation goes here
[CorrectedState,CorrectedStateCovariance] = correct(obj,log(x))

end

