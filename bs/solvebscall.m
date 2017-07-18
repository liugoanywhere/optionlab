function [sigma,fval,exitflag,output] = solvebscall( s,k,y,t,r  )
%SOLVEBSCALL Summary of this function goes here
%   Detailed explanation goes here
options = optimoptions(@fsolve,'Display','off','Jacobian','off','TolFun',1e-10);
 [sigma,fval,exitflag,output]=fsolve(@(x)bscall( s,k,x,t,r )-y,0.3,options);



end

