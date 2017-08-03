function [sigma,fval,exitflag,output] = solvebscall2( s,k,y,t,r  )
%SOLVEBSCALL Summary of this function goes here
%   Detailed explanation goes here

options = optimoptions('fsolve','Algorithm','trust-region-dogleg','SpecifyObjectiveGradient',true,'Display','off');
for i=1:length(s)
    
[sigma1,fval1,exitflag1,output1] = fsolve(@(x)fminconstr( s,k,y,t,r,x  ),0.3,options);
sigma(i)=sigma1;
fval(i)=fval1;
exitflag(i)=exitflag1;
output(i)=output1;
end


end





function [y1,g] = fminconstr( s,k,y,t,r,x  )


[ y1,~,~,g ] =  bscall( s,k,x,t,r ); % the fsolve objective is fmincon constraints
y1=y1-y;
end

