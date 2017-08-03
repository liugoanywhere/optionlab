function [ logiv ] = kalmanmeasurement( x,k,t )
for i=1:21
    for j=1:3
        %k=0.8+0.02*(i-1);
        %t=j/12;
v=exp(x(1));
m=x(2);
rho=(exp(x(3))-1)/(exp(x(3))+1);
w=exp(x(4));
eta=exp(x(5));
logiv(j+(i-1)*3)=log(newtheoryi2( eta, t(j+(i-1)*3), m, w, rho, v, k(j+(i-1)*3) ,0));
end
end
end

