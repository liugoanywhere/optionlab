function  [x,fval,exitflag,output] = solvecvs( y1,k1,t1 )

%TIMEVARIANCE Summary of this function goes here
%   Detailed explanation goes here

options = optimoptions(@fsolve,'Display','off','Jacobian','off','TolFun',1e-10);
 [x,fval,exitflag,output]=fsolve(@(s)cvs(k1,s,t1)-y1,0.3,options);



end
