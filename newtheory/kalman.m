function [ CorrectedState,CorrectedStateCovariance ] = kalman( obj,x,k,t )
%KALMAN Summary of this function goes here
%   Detailed explanation goes here
%try
[CorrectedState,CorrectedStateCovariance] = correct(obj,x,k,t);
[PredictedState,PredictedStateCovariance] = predict(obj);
%catch
%CorrectedState=-1;
%end
end

