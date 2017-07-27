function [ iv,delta,gamma,vega ] = solveiv( callput,s,k,y,t,r )
%SOLVEIV Summary of this function goes here
%   Detailed explanation goes here
if callput==0
[iv,fval,exitflag,output] = solvebscall( s,k,y,t,r  );
else
 [iv,fval,exitflag,output] = solvebsput( s,k,y,t,r  );   
end
if exitflag<=0
iv=-1;
delta=-1;
gamma=-1;
vega=-1;
    return
end

if callput==0
 [ ~,delta,gamma,vega ] = bscall( s,k,iv,t,r );
else
 [ ~,delta,gamma,vega ] = bsput( s,k,iv,t,r );
end

end

