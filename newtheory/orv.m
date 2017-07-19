function [sigma1] = orv( K,s,t )
%ORV Summary of this function goes here
%   Detailed explanation goes here
opts = optimoptions(@fmincon,'Algorithm','interior-point','Display','off');
sigma1 = fmincon(@(x)0,[0.3],[],[],[],[],[0],[],@(x)fminconstr(K,s,t,x),opts);


end
function [c,ceq] = fminconstr(K,s,t,x)

c = []; % no nonlinear inequality
ceq = orvfun(K,s,t,x); % the fsolve objective is fmincon constraints
end