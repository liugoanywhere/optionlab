function [ x1,fval,exitflag,output ] = getmle4( iv,k,t,mask,numk,numt,ifv,ndays,initialStateGuess)

opts = optimoptions(@fmincon,'Algorithm','interior-point','Display','off','OptimalityTolerance',1e-20);

[x1,fval,exitflag,output] = fmincon(@(x)sum((exp(iv)-exp(kalmanmeasurement4( x,k,t,mask,numk,numt,ifv,ndays ))).^2),initialStateGuess,[],[],[],[],[],[],[],opts);

if exitflag<=0
x1=-1;
end


end

