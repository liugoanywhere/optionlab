function [ logiv ] = kalmanmeasurement2( x,k,t )
for i=1:21
    for j=1:6
        %k=0.8+0.02*(i-1);
        
        if j<=3
            %t=j/12;
        else
            %t=(j-3)/12;
        end
v=exp(x(1));
m=x(2);
rho=(exp(x(3))-1)/(exp(x(3))+1);
w=exp(x(4));
eta=exp(x(5));
vp=exp(x(6));
mp=x(7);
rhop=(exp(x(8))-1)/(exp(x(8))+1);
if j<=3
logiv(j+(i-1)*6)=log(newtheoryi2( eta, t(j+(i-1)*6), m, w, rho, v, k(j+(i-1)*6),0 ));
else
    logiv(j+(i-1)*6)=log( newtheoryv2( eta, t(j+(i-1)*6), w,  mp, rhop, vp, k(j+(i-1)*6) ,0));
end
end
end
end