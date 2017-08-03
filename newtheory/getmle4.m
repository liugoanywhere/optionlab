function [ x1,fval,exitflag,output ] = getmle4( iv,k,t )

opts = optimoptions(@fmincon,'Algorithm','interior-point','Display','off','OptimalityTolerance',1e-20);
[x1,fval,exitflag,output] = fmincon(@(x)-mle4(iv,x,k,t),[0.09,-0.5,-0.5,0.5,0.5,0,0.09,-0.5,-0.5,0],[],[],[],[],[0,-Inf,-1,0,0,-Inf,0,-Inf,-1,-Inf],[Inf,Inf,1,Inf,Inf,Inf,Inf,Inf,1,Inf],[],opts);




end

