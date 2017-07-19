function [sigma,fval,exitflag,output] = solvebscall( s,k,y,t,r  )
%SOLVEBSCALL Summary of this function goes here
%   Detailed explanation goes here
options = optimoptions(@fsolve,'Display','off','Jacobian','off','TolFun',1e-10);
for i=1:length(s)
    
[sigma1,fval1,exitflag1,output1]=fsolve(@(x)bscall( s(i),k(i),x(i),t(i),r(i) )-y(i),0.3,options);
sigma(i)=sigma1;
fval(i)=fval1;
exitflag(i)=exitflag1;
output(i)=output1;
end


end

