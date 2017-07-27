function [sigma,fval,exitflag,output] = solvebsput( s,k,y,t,r  )
%SOLVEBSCALL Summary of this function goes here
%   Detailed explanation goes here
opts = optimoptions(@fmincon,'Algorithm','interior-point','Display','off');
for i=1:length(s)
    
[sigma1,fval1,exitflag1,output1] = fmincon(@(x)0,[0.3],[],[],[],[],[0],[],@(x)fminconstr( s,k,y,t,r,x  ),opts);
sigma(i)=sigma1;
fval(i)=fval1;
exitflag(i)=exitflag1;
output(i)=output1;
end


end





function [c,ceq] = fminconstr( s,k,y,t,r,x  )

c = []; % no nonlinear inequality
ceq =  bsput( s,k,x,t,r )-y; % the fsolve objective is fmincon constraints
end
