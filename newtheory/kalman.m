function [ CorrectedState,fval ] = kalman( obj,iv,k,t, mask, numk, numt, ifv, ndays )
%KALMAN Summary of this function goes here
%   Detailed explanation goes here
%try
[CorrectedState,CorrectedStateCovariance] = correct(obj,iv,k,t);
[PredictedState,PredictedStateCovariance] = predict(obj);
fval=sum((exp(iv)-exp(kalmanmeasurement4( CorrectedState,k,t,mask,numk,numt,ifv,ndays ))).^2);

%catch
%CorrectedState=-1;
%end
end

